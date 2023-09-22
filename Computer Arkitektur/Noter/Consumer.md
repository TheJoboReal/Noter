An example: Bounded buffer
Consumer: a process consumes information

```c
while (true) {
while (counter == 0)
; /* do nothing */
next consumed = buffer[out];
out = (out + 1) % BUFFER SIZE;
counter--;
/* consume the item in next consumed */
}
```