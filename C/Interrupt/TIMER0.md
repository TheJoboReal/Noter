```C
#define __AVR_ATmega32A__

#include <avr/io.h>
#include <avr/interrupt.h>

// 8.000.000 Hz / 8 = 1.000.000 hz
// 1.000.000 Hz / 250 = 5.000 hz

uint16_t A = 0;

int main(void) {

    DDRB  = 0xff;          // Config PortB as output
    TCCR0 = 0b00001010;    // Config Timer0 in CTC mode, Prescaler=8
    OCR0  = 249;           // Set value for OCR0
                           // time = ((OCR0 + 1) * N)/F_cpu where N is the prescaler
    TIMSK = 0b00000010;    // Enable Timer0 Compare Match Interrupt

    PORTB = 0;

    sei();                 // Enables Global interrupt
    while (1) { }
}

ISR(TIMER0_COMP_vect)
    // This function is executed when TCNT0==OCR0 (Compare match)
    {
    A++;
    if (A==4000) {
        A=0;
        PORTB++;
    }
}

```