void set_PM_EN(unsigned char value);
void set_PM_PRE(unsigned char value);

unsigned char get_PM_PRE(void);
unsigned char get_PM_DONE(void);
unsigned long int get_PM_CNT(void);
unsigned char get_PM_IN(void);

unsigned long int pm_measure(void);

float pm_average(int num_of_measurements);

//Besvarelse oppgave 4

unsigned char get_bit(unsigned int adr, unsigned char offset, unsigned char bit_pos) {
	unsigned int temp_read = IORD_32DIRECT(adr, offset);
	unsigned int mask = 1 << bit_pos;
	if ((mask & temp_read) == mask) {
		return 1;
	} else {
		return 0;
	}
}

void set_bit(unsigned int adr, unsigned char offset, char bit_pos, unsigned char value) {
	unsigned int temp = IORD_32DIRECT(adr, offset);
	unsigned int mask = 1 << bit_pos;
	if (value == 1) {
		temp |= mask;
	} else {
		temp &= ~mask;
	}
	IOWR_32DIRECT(adr, offset, temp);
}

void set_PM_EN(unsigned char value) {
	set_bit(PM_BASE, 0, 0, value);
}

void set_PM_PRE(unsigned char value) {
  unsigned int read_0_adr = IORD_32DIRECT(PM_BASE, 0);
  unsigned int new_val = ((value << 8) & read_0_adr) | 1;
  IOWR_32DIRECT(PM_BASE, 0, new_val);
}

unsigend char get_PM_PRE() {
  unsigned int read_0_adr = IORD_32DIRECT(PM_BASE, 0);
  unsigned int mask = 65280; //0b1111111100000000
  return (mask & read_0_adr) >> 8;
}

unsigned char get_PM_DONE() {
  return get_bit(PM_BASE, 12, 0);
}

unsigned long int get_PM_CNT() {
  return IORD_32DIRECT(PM_BASE, 4);
}

unsigned char get_PM_IN() {
  return get_bit(PM_BASE, 12, 1);
}

unsigned long int pm_measure() {
  set_PM_EN(1);
  while(get_PM_DONE() != 1) {}
  return get_PM_CNT();
}

float pm_average(int num_of_measurements) {
  float result = 0;
  for (int i = 0; i < num_of_measurements; i++) {
    unsigned long int measurement = pm_measure();
    result += measurement;
  }
  return result / num_of_measurements;
}
