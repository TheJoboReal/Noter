![[Pasted image 20230922082940.png]]
***
>See also [[Consumer]]

An example: Bounded buffer
Producer: a process produces information

```c
while (true) {
/* produce an item in next produced */
while (counter == BUFFER SIZE) ;
/* do nothing */
buffer[in] = next produced;
in = (in + 1) % BUFFER SIZE;
counter++;
}
```
