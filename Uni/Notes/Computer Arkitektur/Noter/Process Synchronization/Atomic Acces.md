---
tags:
  - lecture-note
  - uni
course: Computer Arkitektur
---
Generally, atomic can be understood as "one at a time", meaning that atomic access only allows for a
single process to perform an operation on a shared variable – namely an atomic operation. An atomic
variable is then a variable for which the order of concurrent access is well defined.

***
#### Example
Write a C++ program that creates two threads, each of which atomically increment the
same (global) variable every 100 ms. Print the variable each time it is incremented. How might
the print log look if no synchronization is used?

```cpp
#include <iostream>
#include <thread>
#include <chrono>
#include <mutex>
// #include <atomic>
// #include <condition_variable>

int main(int argc, char const *argv[])
{
        // https://code.visualstudio.com/docs/cpp/config-mingw
        using namespace std::literals::chrono_literals;

        int counter = 0;
        // std::atomic<int> counter = 0;
        std::mutex mtx_counter;

        auto t1 = std::thread([&](){

                while (true)
                {
                        mtx_counter.lock(); // critical section
                        counter++;
                        std::cout << "[t1]: " << counter << "\n";
                        std::this_thread::sleep_for(100ms);
                        mtx_counter.unlock();
                };

        });

        auto t2 = std::thread([&](){

                while (true)
                {
                        auto lock = std::lock_guard(mtx_counter); // critical section
                        counter++;
                        std::cout << "[t2]: " << counter << "\n";
                        std::this_thread::sleep_for(100ms);
                };

        });

        t1.join();
        t2.join();

        return 0;
}
```