![[Pasted image 20230922092148.png]]

***
[[Semaphores]] Solution
Philosopher *i*
```cpp
while (TRUE) {
	wait ( chopstick[i] );
	wait ( chopStick[ (i + 1) % 5] );
	…
	/* eat for a while */
	…
	signal ( chopstick[i] );
	signal (chopstick[ (i + 1) % 5] );
	…
	/* think for a while */
	…
}
```

***
[[Monitors]] solution

```cpp
{
	enum {THINKING; HUNGRY, EATING} state [5] ;
	condition self [5];
	void pickup (int i) {
		state[i] = HUNGRY;
		test(i);
		if (state[i] != EATING)
		self [i].wait;
	}
	void putdown (int i) {
		state[i] = THINKING;
		// test left and right neighbors
		test((i + 4) % 5);
		test((i + 1) % 5);
	}
	void test (int i) {
		if ( (state[(i + 4) % 5] != EATING) &&
		(state[i] == HUNGRY) &&
		(state[(i + 1) % 5] != EATING) ) {
			state[i] = EATING ;
			self[i].signal () ;
		}
	}
	initialization_code() {
		for (int i = 0; i < 5; i++)
		state[i] = THINKING;
	}
}
```
![[Pasted image 20230922092708.png|400]]
