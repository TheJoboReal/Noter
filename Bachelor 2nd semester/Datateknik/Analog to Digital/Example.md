
Potentiometer outputs the to PORTB aka te LEDS on the microcontroller.
```C
#define F_CPU 8000000 // CPU frekvens defination.
#include <avr/io.h>
#include <util/delay.h>

int main(void) {
  DDRB = 0xff;  //PORTB as output
  DDRA = 0;     //PORTA as input, disabled pull-up by default
  ADMUX = 0b01100000;  //AREF=5V, Left ADJ, Channel 0
  ADCSRA = 10000011;   // Enable ADC, Prescaler = 8

  while (1) {
    ADCSRA |= 11000011;  //ADC start conversion
    while (ADCSRA == 10000011); // Check if convers is done
    PORTB = ~ADCH;  //Send inverted results to PORTB LEDS
  }
}
```
