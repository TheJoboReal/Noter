---
tags:
  - lecture-note
  - uni
course: C++
---

***
`&` tegnet viser addressen og `*` tegnet viser værdien som variablen peger på.

***

```Cpp
myvar = 25;

foo = &myvar; //Her er værdien lig med addressen, fks 1776.
bar = myvar;  //Her er værdien 25.
```


Den her pointer peger på addressen til th
```Cpp
int th=100;
int *p =&th;
std::cout << *p << std::endl;  //Her vil 100 blive printet.

```