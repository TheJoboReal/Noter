**Systems commonly have a pool of “free frames”**
* When a page fault occurs, a victim frame is chosen as before. However, the desired page is read into a free frame from the pool before the victim is written out.
* The system may periodically review processes and reclaim pages to the pool.
* This action will often be done when the number of pages in the pool is below a minimum threshold.

**The system may have a list of modified pages**
* Whenever the paging device is idle, a modified page is selected and is written to secondary storage. Its modify bit is then reset, and the page can then be replaced later.

**The system can keep track of the content of pages in its free frame pool**
* When a page fault occurs, we first check whether the desired page is in the free-frame pool. If yes, then the old page in the pool can be reused again without the need to pick up from secondary storage.
