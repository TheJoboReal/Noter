
In order to read the keypad a counter loops through the rows waits for a keypress. When a keypress is detected the MUX translates that to a high-bit output, which then runs back into the counter that is active-low and stops it. We then see what row the counter was on to determine the key that was pressed. The pressed key is output as a 4 bit vector. 
![[Pasted image 20240428220455.png]]

***
A mask that can translate the keypad presses to characters was created. Unfortunately vivado does not allow the character functions inside blockdiagrams. Therefore the binary values of the keys were used through the project.

Using the FSM complex model for our lock we create a state machine. The models makes sure that a person cant bruteforce the lock easily. The machine switches state when a keypress is detected and chooses the next state according to what key was pressed(ei to continue if the press was correct or to reset if wrong)
When the correct combination is input, the system goes from the locked to the unlocked state. This turns on an LED and allows the user to press a number from $0$ to A to set the PWM duty cycle between $100\%$ to $0\%$. 
![[Pasted image 20240428220433.png]]

***
To make sure the correct corresponding duty cycle is output, a mask is put between the PWM generator and the state machine. 

A clock divider is used to get a frequency of $16$kHz for the LED and keypad. For the clock divider the formula is used $125\cdot \frac{10^6}{10\cdot 10^3}=7812.5$ and then to get the needed amount of bits $\log_{2}(7812.5)=12.93=13$.
Therefore 13 bits are used in the clock divider.

***

```vhdl


```

