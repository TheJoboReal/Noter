For every switch flipped, the delay will be half as fast as previus.

```C
#include <avr/io.h>
#include <util/delay.h>

#define BLINK_DELAY_MS 100
int main(void) {
  {
    DDRB = 0xff;        // Set PortB as output
    PORTB = 0xff;       // Set PortB to 0xff
    DDRC = 0x00;        // Set PortC as input
    PORTC = 0xff;       // Enable Pull-ups
    TCCR0 = 0b00011101; // Configure Timer0, Prescaler 1024,
    // CTC, Toggle OC0 on match
    while (1) {
      OCR0 = ~PINC; // Read PINC and put in OCR0
    }
  }
}

```

