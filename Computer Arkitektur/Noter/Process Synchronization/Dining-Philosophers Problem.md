![[Pasted image 20230922093538.png|400]]
>Five Philosophers, five bowls of rice but only 5 chopsticks in total. Represents shared resources.

![[Pasted image 20230922092148.png]]

***
[[Semaphore]] Solution. This solution is not the best as it can result in a [[Computer Arkitektur/Noter/Process Synchronization/Deadlock]] situation.

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
Here it checks if the two neighboring philosophers are *eating* before itself starts to *eat* to make sure a deadlock situation does not occur. 
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
