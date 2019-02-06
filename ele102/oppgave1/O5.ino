//Tommy Opstad - 28/01/2019

int StartYear = 2019;
int StartMonth = 0;
int StartDate = 0;
int StartHour = 0;
int StartMinute = 0;
int StartSecond = 0;

double Speed = 100; // 1000 = Normal Speed

void setup() {
  Serial.begin(9600);  
}

void loop() {

  if (StartSecond >= 60)
  {
    StartSecond = 0;
    Serial.println("HALLLO");
    delay(1000);
  }
  

  
  StartSecond = StartSecond + 1;
  StartMinute = (StartSecond / 60) + 1;
  StartHour = (StartSecond / (60*60)) + 1;

  if (StartMinute == 60) 
  {
    StartMinute = 0;
  }

  if (StartHour == 60) 
  {
      StartHour = 0;
  }
  if (StartDate == 30) 
  {
      StartDate = 0;
  }
  if (StartMonth == 12) 
  {
      StartMonth = 0;
  }

 
  Serial.print(StartYear); 
  Serial.print('/');
  if (StartMonth < 10){
    Serial.print('0');
  }
  Serial.print(StartMonth); 
  Serial.print('/');
  if (StartDate < 10){
    Serial.print('0');
  }
  Serial.print(StartDate); 
  Serial.print('/');
  Serial.print(' ');
  if (StartHour < 10){
    Serial.print('0');
  }
  Serial.print(StartHour);
  Serial.print(':');
  if (StartMinute < 10){
    Serial.print('0');
  }
  Serial.print(StartMinute);
  Serial.print(':');
  if (StartSecond < 10){
    Serial.print('0');
  }


  Serial.println(StartSecond);

  delay(Speed); 


}
