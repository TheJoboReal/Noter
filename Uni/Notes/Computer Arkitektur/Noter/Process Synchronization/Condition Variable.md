Condition variables allow us to synchronize threads via notifications. For example, given a producer and consumer thread; if the consumer wants to know whether there is data available, it must continu- ously acquire the mutex, check the queue, and release the mutex – or process any data if it’s there – if not, then repeat with some sleep in between the checks.
This is highly inefficient. Instead, a conditional variable can be used, where the producer thread can simply notify the consumer thread, when the data is ready. For example (https://stackoverflow.com/questions/6894388/about-condition-variable-in-c/6894442#6894442)

```cpp
condition_variable cond;
mutex mtx;
bool data_ready = false;
void producer() {
	unique_lock<mutex> lock(mtx); // protect data_ready
	data_ready = true;
	cond.notify_one();
}
void consumer() {
	unique_lock<mutex> lock(mtx); // protect data_ready
	while(!data_ready) {
		cond.wait(lock);
	}
	// process data ..
}
```