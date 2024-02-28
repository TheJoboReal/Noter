#### Definition
* Discrete quantities of digital information, data are often represented in a coded form; binary being the most popular.
*  Encoders are used to encode data into a coded form and decoders are used to convert it back into its original uncoded form.
* An encoder that has 2𝑛𝑛(or less) input lines encodes input data to provide n encoded output lines.
* It is assumed that only one input has a value of 1 at any given time, otherwise the output has some undefined value and the circuit is meaningless.
* Example if you have 100 motors and you only want to use 9 bits instead of hundreds of bits.
![[Pasted image 20240228132706.png]]

#### VHDL syntax
* All models of encoders circuit must use a default “don’t care” value to minimize the synthesized circuit as only 8 of 256 (28) input conditions need to be specified.
* The synthesis tool, if capable, replaces “don’t care” values with logic 0 or logic 1 values as necessary in order to minimize the circuit’s logic.

![[Pasted image 20240228132811.png]]

##### 8-3 encoder
![[Pasted image 20240228132934.png]]
