![[Pasted image 20230926122718.png]]
Here the information is carried by 8 bits as a unit (one byte e.g., ASCII).
A special character (which does not appear in the data stream) is used as the flag
• The header contains: source and destination address and other
control information. 

• The trailer contains: the redundant bits used to detect errors (and
perhaps correct them).

***

But as the information could also be graphics, audio and video. Then it
could no longer be guaranteed that the flag could not occur in the data
stream itself.
This would be mistaken for the end of a Frame.

***
#### Byte stuffing

Here a special character (Esc code) is used, which is added in the data section
just before the characters that have the same pattern as the flag.
However, it may also happen that the Esc code itself appears in the data
section. If this happens, an Esc code is inserted here just before this character.

![[Pasted image 20230926123053.png]]

***

Today, character-oriented protocols have another problem in data
communication, as 16- and 32-bit universal coding systems are more
popular, such as UniCode. This conflicts with the old-fashioned 8-bit
characters.
We can generally say that the trend is moving away from the character-
oriented framing and in the direction of the bit-oriented framing.