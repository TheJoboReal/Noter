```C
int main(void)
{
DDRC = 0x00;	//Set Pin C as input.
PORTC = 0xFF;	//Pullup Enable.
DDRB = 0xFF;	//Set Pin B as output.

unsigned char C;

while(1){
	C = PINC;
	PORTB = C;
}
}
```
This code Reads the input from Pin C and set Pin B as output.