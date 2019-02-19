int phases[4][6] = {{1, 0, 0, 0, 0, 1}, {0, 1, 0, 0, 1, 1}, {0, 0, 1, 1, 0, 0}, {0, 1, 1, 0, 1, 0}};
bool pressed;

void set_lights(int phase[]) {
  int pin = 8;
  for (int i = 0; i < 6; i++) {
    if (phase[i] == 1) digitalWrite(pin, HIGH);
    else digitalWrite(pin, LOW);
    pin--;
  }
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

void print_status(int phase[]) {
  
}

void setup() {
  pinMode(2, INPUT_PULLUP);
  Serial.begin(9600);
}

void loop() {
  pressed = false;
  
  set_lights(phases[0]);
  Serial.println("Status: NS = GREEN\t\tEW = RED");
  psudo_listen(30);
  if (pressed) return;
  
  set_lights(phases[1]);
  Serial.println("Status: NS = YELLOW\t\tEW = RED && YELLOW");
  psudo_listen(5);
  if (pressed) return;
  
  set_lights(phases[2]);
  Serial.println("Status: NS = RED\t\tEW = GREEN");
  psudo_listen(40);
  if (pressed) return;
  
  set_lights(phases[3]);
  Serial.println("Status: NS = RED && YELLOW\tEW = YELLOW");
  psudo_listen(5);
  if (pressed) return;
}
