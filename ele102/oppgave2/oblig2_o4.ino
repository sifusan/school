int active_light_1 = 8;
int active_light_2 = 5;
bool pressed;
void setup() {
  pinMode(2, INPUT_PULLUP);
  Serial.begin(9600);
}

void clear_lights() {
  for (int i = 3; i < 9; i++) {
    digitalWrite(i, LOW);
  }
}

void set_lights(int n1, int n2) {
  digitalWrite(n1, HIGH);
  digitalWrite(n2, HIGH);
}

void print_status(int n1) {
  String color;
  switch(n1) {
    case 8:
      color = "Green";
      break;
    case 7:
      color = "Yellow";
      break;
    case 6:
      color = "Red";
      break;
  }
  Serial.println("Status: " + color);
}

void psudo_listen(int seconds) {
  bool b = false;
  int n = 0;
  
  while((n < seconds*1000) && !b) {
    delay(1);
    if (digitalRead(2) == 1) {
      pressed = true;
      b = true;
      break; 
    }
    n++;
  }
}

void loop() {
  pressed = false;
  while(digitalRead(2) == 0) {
    clear_lights();
    set_lights(active_light_1, active_light_2);
    print_status(active_light_1);
    active_light_1--;
    active_light_2--;
    if (active_light_1 <= 5) active_light_1 = 8;
    if (active_light_2 <= 2) active_light_2 = 5;
    psudo_listen(1);
  }
  clear_lights();
  active_light_1 = 8;
  active_light_2 = 5;
  set_lights(active_light_1, active_light_2);
  print_status(active_light_1);
  psudo_listen(1);
}
