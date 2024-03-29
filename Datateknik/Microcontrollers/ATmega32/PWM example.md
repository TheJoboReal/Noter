
Det her program tager pin C som input og bruger det til at styre styrken af LEDerne.

```C
#include <avr/io.h>
#include <util/delay.h>

int main(void) {
  DDRB = 0xff;  // Set PortB as output
  PORTB = 0xff; // Set PortB to 0
  DDRC = 0x00;
  PORTC = 0xff;
  TCCR0 = 0b01111001; // Configure Timer0 in Fast PWM, inverting mode, with
                      // Prescaler=1
  OCR0 = 25.6;        // Set OCR0 to have 10% Duty Cycle of full scale (256)
  while (1) {
    OCR0 = PINC;
  }
}


```