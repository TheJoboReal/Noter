![[Pasted image 20231006123702.png]]
![[Pasted image 20231006123718.png]]
![[Pasted image 20231006123746.png]]

***
#### TLB
Reducing access time using a TLB example
* Storage in TLB (Fully Associative Lookup) = tTLB ns
	o Will often be < 20% of memory accesstime
* Hit ratio =
	o Hit ratio – How often do we find the page number in the TLB.
 
Hit ratio depends, among other things, on the number of entries in the TLB
HIT: Lookup in TLB→ Page no. exist→ memory accessed
MISS: Lookup in TLB→ Page no. does not exist → Page table accessed → memory accessed

Effective Access Time (EAT)
EAT= (tTLB + tmem)  + (tTLB + tmem + tmem)(1 – )
Example:  = 80%, tTLB = 20ns for TLB lookup, tmem = 100ns for memory
access EAT= (100 + 20) ∙ 0,80 + (100 + 100 + 20)( 1 – 0,80) = 140ns
Realistic example: = 99%, tTLB = 20ns for TLB lookup, tmem = 100ns for memory access EAT= (100 + 20) ∙ 0,99 + (100 + 100 + 20)( 1 – 0,99) = 121ns

***
![[Pasted image 20231006123855.png]]
