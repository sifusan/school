// Utgangspunkt for Oblig 4 oppgave 5
// SvHa 26mar19 PA2 
//
#include <RtcDS3231.h>
#include <Wire.h>

String inputString = "";         // a string to hold incoming data
RtcDS3231<TwoWire> rtcModule(Wire);

const int max_param_length = 100;
void setup() 
{
   pinMode(LED_BUILTIN,OUTPUT);
   
   // initialize serial:
   Serial.begin(9600);
  
   // reserve 200 bytes for the inputString:
   inputString.reserve(200);
   Serial.print("monitor> ");
   Wire.begin();
   RtcDateTime compiled = RtcDateTime(__DATE__, __TIME__);
   rtcModule.SetDateTime(compiled);
}

// funksjons prototyper

void set_led(byte value);
void print_help(void);
void set_rtc_date(byte day, byte month, byte year);
void set_rtc_time(byte hour, byte minute, byte second);
String get_rtc_date(void);
String get_rtc_time(void);
float get_adc(byte channel);
void print_help(void);
   
void loop() 
{     
   int len;
   int space;
    
   String command;
   String parameter;
   
   while (Serial.available()) 
   {
      char inChar = (char)Serial.read();  // les det som er kommet inn byte for byte
      inputString = inputString + inChar; // legg til sist i input string
      if (inChar == '\n')                 // hvis det kommer ny linje (enter) så tolk kommand
      {  
         space = inputString.indexOf(" ");   // finn posisjon til mellomrom
         len = inputString.length();         // finn lengde på linje
         if (space == -1)                    // kommando uten parameter
         {
            command = inputString.substring(0,len-1); //NB! Modifisert til til å fungere nix systemer, sett len-2 for windows
            parameter = "";
         }
         else                                // kommando med parameter 
         {
            command = inputString.substring(0,space); 
            parameter = inputString.substring(space+1,len-1); //NB! Modifisert til til å fungere nix systemer, sett len-2 for windows
         }

         // skriv ut mottatt kommando og parameter
         Serial.print(command);
         Serial.print(" ");
         Serial.println(parameter);

         // utfør mottatt kommando og parameter

         if (command == "help")
            print_help();
         else if (command == "set_led")
            set_led(parameter.toInt());
         else if (command == "get_time")
            Serial.println(get_rtc_time());
         else if (command == "get_date")
            Serial.println(get_rtc_date());
         else if (command == "set_time") {
            int to_parse[3];
            parse(parameter, to_parse);
            set_rtc_time(to_parse[0], to_parse[1], to_parse[2]);
         }
         else if (command == "set_date") {
            int to_parse[3];
            parse(parameter, to_parse);
            set_rtc_date(to_parse[0], to_parse[1], to_parse[2]-208);
         }
         else if (command == "get_adc") {
            String s = String(get_adc(parameter.toInt()), 3);
            Serial.println(s);
         }
         else
            Serial.println("unknown comand");     

         Serial.print("monitor> ");
         // clear the string:
         inputString = "";
      }
   }
}

void parse(String in_params, int out_params[]) {
  String tmp = "";
  int index = 0;
  for (int i = 0; i < in_params.length(); i++) {   
    if (in_params.charAt(i) == ':') {
      out_params[index] = tmp.toInt();
      index++;
      tmp = "";
    } else {
      tmp = tmp + in_params.charAt(i);
    }    
  }
  out_params[index] = tmp.toInt();
}

// funksjonsrealiseringer

void print_help(void)
{
   Serial.println("monitor kommandoer: ");
   Serial.println("help \t \t skriv tilgjengelige kommandoer");
   Serial.println("set_led <0|1> \t styr innebygget LED");
}

void set_led(byte value)
{
   digitalWrite(LED_BUILTIN,value);
}

String get_rtc_date() {
  RtcDateTime current_date_time = rtcModule.GetDateTime();
  String year = (String)current_date_time.Year();
  String month = (String)current_date_time.Month();
  String day = (String)current_date_time.Day();
  
  return day + ":" + month + ":" + year;
}

String get_rtc_time() {
  RtcDateTime current_date_time = rtcModule.GetDateTime();
  String hour = (String)current_date_time.Hour();
  String minute = (String)current_date_time.Minute();
  String second = (String)current_date_time.Second();
  return hour + ":" + minute + ":" + second;
}

void set_rtc_date(byte day, byte month, byte year) {
  RtcDateTime current_date_time = rtcModule.GetDateTime();
  byte hour = current_date_time.Hour();
  byte minute = current_date_time.Minute();
  byte second = current_date_time.Second();
  RtcDateTime updated_date_time = RtcDateTime(year, month, day, hour, minute, second);
  rtcModule.SetDateTime(updated_date_time);
}

void set_rtc_time(byte hour, byte minute, byte second) {
  RtcDateTime current_date_time = rtcModule.GetDateTime();
  byte year = current_date_time.Year();
  byte month = current_date_time.Month();
  byte day = current_date_time.Day();
  RtcDateTime updated_date_time = RtcDateTime(year, month, day, hour, minute, second);
  rtcModule.SetDateTime(updated_date_time);
}

float get_adc(byte channel) {
  return analogRead((double)channel);
}
