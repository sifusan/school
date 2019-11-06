int year = 2019;
int month = 2;
int date = 28;
int hour = 23;
int minute = 58;
int second = 57;
bool green_on = 0;
bool red_on = 0;
int green_switch = 6;
int red_switch = 7;
int red_led = 8;
int green_led = 9;
int pot_pin = A0;
int pot_val = 0;
int green_wait = 1000;
int red_wait = 1000;

String padZero(int n) {
  if (n < 10) return "0" + (String)n;
  else return (String)n;
}

String getTime() {
  String hour_string = padZero(hour);
  String minute_string = padZero(minute);
  String second_string = padZero(second);
  return hour_string + ":" + minute_string + ":" + second_string;
}

String getDate() {
  String year_string = String(year);
  String month_string = padZero(month);
  String date_string = padZero(date);  
  return date_string + "/" + month_string + "/" + year_string;
}

int inc_and_wrap(int n, int limit) {
  n = n + 1;
  return n % limit;
}

int inc_and_wrap_date(int n, int m) {
  //n = n + 1;
  int leap = 28;
  if ((year % 4) == 0) leap = 29;
  
  switch(m) {
    case 2:
      n = n % leap;
      break;
    case 4:
    case 6:
    case 9:
    case 11:
      n = n % 30;
      break;
    default:
      n = n % 31;
      break;
  }
  if (n == 0) return 1;
  else return n+1;
}

void setup() {
  pinMode(green_switch, INPUT_PULLUP);
  pinMode(red_switch, INPUT_PULLUP);
  Serial.begin(9600);
}

void check_switches() {
  if (green_wait > 0) green_wait--;
  if (red_wait > 0) red_wait--;
  
  if (digitalRead(green_switch) && green_wait == 0) {
    if (green_on == 0) {
       digitalWrite(green_led, 1);
       green_on = 1;
    } else {
      digitalWrite(green_led, 0);
      green_on = 0;
    }
    green_wait = 1000;
  }
    
  if (digitalRead(red_switch) && red_wait == 0) {
    if (red_on == 0) {
       digitalWrite(red_led, 1);
       red_on = 1;
    } else {
      digitalWrite(red_led, 0);
      red_on= 0;
    }
    red_wait = 1000;
  }
}

void delay_with_millis(int seconds) {
  unsigned long current_run_time = millis();
  unsigned long time_to_wait = current_run_time + (long)seconds*1000;
  while(millis() < time_to_wait) {
    check_switches();
    pot_val = analogRead(pot_pin);
  }
}

String format_string() {

  String s = ("$A" + getDate());
  s = s + "B" + getTime();
  s = s + "C" + (String)pot_val;
  s = s + "D" + (String)green_on + (String)red_on + "#\n";
  return s;
}

void printStatus() {
//  Serial.print("$A" + getDate());
//  Serial.print("B" + getTime());
//  Serial.print("C" + (String)pot_val);
//  Serial.print("D" + (String)green_on + (String)red_on + "#\r\n");
  Serial.print(format_string());
}

void inc_time() {
  second = inc_and_wrap(second, 60);
  if (second == 0) {
    minute = inc_and_wrap(minute, 60);
    if (minute == 0) {
      hour = inc_and_wrap(hour, 24);
      if (hour == 0) {
        date = inc_and_wrap_date(date, month);
        if (date == 1) {
          month = inc_and_wrap(month, 12);
          if (month == 0) {
            month = 1;
            year = year + 1;
          }  
        }
      }
    }
  }
}

void loop() {
  delay_with_millis(1);
  inc_time();
  printStatus();
}
