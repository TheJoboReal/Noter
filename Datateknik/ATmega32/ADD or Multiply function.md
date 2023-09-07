
Run with ``make``

```c
#include <avr/io.h>
#include <util/delay.h>

#define BLINK_DELAY_MS 100
int main(void) {
  DDRC = ~0x00; // Set Pin C as input.
  PORTC = 0xFF; // Pullup Enable.
  DDRB = 0xFF;  // Set Pin B as output.

  unsigned char C;
  unsigned char B;

  while (1) {
    C = PINC;
    C = C >> 4;

    B = PINC;
    B = B << 4;
    B = B >> 4;

    C = C + B; //Swap + with * for multiply.

    PORTB = ~C;
  }
}
```

