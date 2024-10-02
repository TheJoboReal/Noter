
#### Definition
There is no guarantee that the sorting algorithm that seems the best from a theoretical point of view, also turns out to be so in a practical context. You may choose to use different sorting algorithms depending on the following characteristics: 
1. The numbers are almost sorted 
2. Big lumps of the numbers are sorted 
3. The numbers are completely random 
4. The numbers are almost in reverse order

#### Inversion
Let’s first take a look at what sorting is really about from a theoretical point of view. Take a look at the following list of numbers:
$$
34, 8, 64, 51, 32, 21
$$
The numbers are clearly unsorted, and let’s see if we can measure out to what extent they are unsorted. To assist us we can define a concept called inversion. An inversion is an ordered pair of numbers (i,j), having the property that i < j but a[i] > a[j]. In the above example the following inversions occur:
$$
(34,8) (34,32) (34,21) (64,51) (64,32) (64,21) (51,32) (51,21) (32,21)
$$
That is a total of nine, and it seems fair to assume that the more inversions the list contains, the more unsorted it is, and that the discipline of sorting is about reducing the number of inversions in a list of numbers to zero.

About the number of inversions in a list (of numbers) the following can be proved:
*The average number of inversions in a list of N different numbers is $\frac{N(N-1)}{4}$.*

About the number of inversions in a list (of numbers) the following can be proved: The average number of inversions in a list of N different numbers is N(N-1)/4. The rationale can be seen in the following way: Let’s look at the total number of ordered pairs in the above list. It must be $5+4+3+2+1$, that is $15$ or $\frac{N(N-1)}{2}$. 
Assuming that half of them are inversions, we end up with $\frac{N(N-1)}{4}$. A list of 6 elements will on the average contain 7.5 inversions. With 9 inversions our list is relatively unsorted.