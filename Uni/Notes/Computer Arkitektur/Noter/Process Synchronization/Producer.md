---
tags:
  - lecture-note
  - uni
course: Computer Arkitektur
---
![[Pasted image 20230922082940.png]]
![[Pasted image 20230922091658.png|250]]

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
