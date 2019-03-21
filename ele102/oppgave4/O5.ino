//Forfattere Simen Fuglestad, Endre Røberg Løseth
#include <U8x8lib.h>

U8X8_SSD1306_128X64_NONAME_HW_I2C u8x8(SCL, SDA);

void setup() {
  Serial.begin(9600);
  pinMode(2, INPUT_PULLUP);
  u8x8.begin();
  u8x8.setFont(u8x8_font_7x14B_1x2_f);
  u8x8.drawString(0,0,"Reaksjonstid PA1");
  u8x8.drawString(0,2,"Trykk for start");
}

int tries = 0;
double average = 0;
double minimum = 0;
double maximum = 0;

void loop() {
  while(digitalRead(2) != 0) {}
  u8x8.clear();
  u8x8.drawString(0,0,"Konsentrer deg");
  
  int r = random(3, 11);
  delay(r*1000);
  u8x8.clear();
  
  String s = "xxxxxxxxxxxxxxx";
  u8x8.drawString(0,0,s.c_str());
  u8x8.drawString(0,2,s.c_str());
  u8x8.drawString(0,4,s.c_str());
  u8x8.drawString(0,6,s.c_str());
  
  unsigned long start_time = millis();
  
  while(digitalRead(2) != 0) {}
  
  double total_time = (millis() - start_time);
  total_time = total_time/1000.0;
  tries++;
  average = (average + total_time)/tries;
  
  if ((total_time < minimum) || (minimum == 0)) minimum = total_time;
  if (total_time > maximum) maximum = total_time;
  u8x8.clear();
  
  String t = String(total_time, 3);
  String a = String(average, 3);
  String mi = String(minimum, 3);
  String ma = String(maximum, 3);
  String line_1 = "Tid:" + t + " Ant: " + tries;
  String line_2 = "Snitt: " + a;
  String line_3 = "Min: " + mi;
  String line_4 = "Max: " + ma;
  
  u8x8.drawString(0, 0, line_1.c_str());
  u8x8.drawString(0, 2, line_2.c_str());
  u8x8.drawString(0, 4, line_3.c_str());
  u8x8.drawString(0, 6, line_4.c_str());
}
