int year = 2019;
int month = 2;
int date = 28;
int hour = 23;
int minute = 58;
int second = 57;

String padZero(int n) {
  if (n < 10) return "0" + (String)n;
  else return (String)n;
}

void printTime() {
  String year_string = String(year);
  String month_string = padZero(month);
  String date_string = padZero(date);
  String hour_string = padZero(hour);
  String minute_string = padZero(minute);
  String second_string = padZero(second);
  Serial.println(year_string + "/" + month_string + "/" + date_string + "\t" + hour_string + ":" + minute_string + ":" + second_string); 
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
  // put your setup code here, to run once:
  Serial.begin(9600);

}

void delay_with_millis(int seconds) {
  unsigned long current_run_time = millis();
  unsigned long time_to_wait = current_run_time + (long)seconds*1000;
  while(millis() < time_to_wait) {}
}

void loop() {
  delay_with_millis(1);
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
  printTime();
}
