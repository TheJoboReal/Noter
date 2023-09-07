
```asmatmel
.org 0x02 ; Set the interrupt vector to address 0x02 
RJMP ISR_INT0 ; Jump to ISR_INT0 when the interrupt occurs  

.org 0x100 ; Set the program start address to 0x100  
LDI R16, HIGH(RAMEND) ; Load the high byte of the RAMEND address into R16  
OUT SPH, R16 ; Store the high byte of the RAMEND address to the stack pointer  
LDI R16, LOW(RAMEND) ; Load the low byte of the RAMEND address into R16  
OUT SPL, R16 ; Store the low byte of the RAMEND address to the stack pointer  

LDI R16, 0xff ; Load the value 0xff into R16  
OUT DDRB, R16 ; Set all PORTB pins as output pins  
OUT PORTB, R16 ; Set all PORTB pins to high (1)

LDI R16, 0b01000000 ; Load the value 0b01000000 (INT0 enable) into R16  
OUT GICR, R16 ; Store the value of R16 to the General Interrupt Control Register  

LDI R16, 0b00000011 ; Load the value 0b00000011 (rising edge trigger) into R16  
OUT MCUCR, R16 ; Store the value of R16 to the MCU Control Register  

SEI ; Enable Global interrupt  

loop: ; Start of the main loop  
	rjmp loop ; forever loop  
	
ISR_INT0: ; Interrupt service routine for INT0  
	IN R20, PORTB ; Read the value of PORTB into R20  
	INC R20 ; Increment the value of R20 by 1  
	OUT PORTB, R20 ; Store the value of R20 to PORTB  
	RETI ; Return from the interrupt
```