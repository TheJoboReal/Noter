When using fork(), copy-on-write allows the parent and child processes to initially share the same pages; the shared pages are marked as copy-on-write pages, meaning that if either process writes to a shared page, a copy of the shared page is created only then. This eliminates unnecessary copying.
***
![[Pasted image 20231013090631.png]]
The fork() system call creates a child process that is a duplicate of its parent. Traditionally, fork() worked by creating a copy of the parent's address space for the child, duplicating the pages belonging to the parent.

Considering that many child processes invoke the exec() system call immediately after creation, the copying of the parent's address space may be unnecessary. Instead, a technique, copy-on- write, can be used to allow the parent and child processes initially to share the same pages.

![[Pasted image 20231013090856.png]]
These shared pages are marked as copy-on-write pages, meaning that if either process writes to a shared page, a copy of the shared page is created.
Only the pages that are modified by either process are copied, and all unmodified pages can be shared by the parent and child processes.