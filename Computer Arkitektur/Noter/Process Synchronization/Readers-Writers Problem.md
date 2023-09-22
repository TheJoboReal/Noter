![[Pasted image 20230922091822.png]]
>See also [[Semaphores]]

***
#### Writers Process
```cpp
while (true) {
	wait(rw_mutex);
	...
	/* writing is performed */
	...
	signal(rw_mutex);
}
```

***
#### Reader Process
```cpp
while (true){
	wait(mutex);
	read_count++;
	if (read_count == 1)
	wait(rw_mutex);
	signal(mutex);
	...
	/* reading is performed */
	...
	wait(mutex);
	read_count--;
	if (read_count == 0)
	signal(rw_mutex);
	signal(mutex);
}
```
This variant gives readers precedence: as long as only one reader is in the system a writer cannot access. So writers can not acces the shared data while its being read.