* **Cyclic redundant check (CRC)**: Each message features a 15-bit Cyclic Redundancy Checksum, and any node that detects a different CRC in the message than what it has calculated itself will signal an CRC Error.
* **Frame check**: fixed fields (delimiters and EOF) are examined for their expected values.
* **[[Flow and error control#ACK|ACK]] check**: the sender examines whether the ACK flag is dominant, if not, then an error has occurred.
* **Bit monitoring**: The sending node checks the sent signal level on the bus in relation to what it sent.
* **Bit stuffing**: each node checks if this rule is complied with, sends an error frame, if not.
All these mechanisms ensure that the probability of an error not
being detected is: $4.7\cdot 10^{-11}$
