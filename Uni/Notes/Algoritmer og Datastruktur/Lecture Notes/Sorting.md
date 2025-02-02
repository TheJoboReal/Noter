---
tags:
  - lecture-note
  - uni
course: Algoritmer og Datastruktur
date: 2025-02-02
---
--- 
#### Definition
> C++ has a built in sorting function [[cpp_sorting.pdf|sort]]

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

##### Inversion Example
```cpp
void bubblesort(int* arr, int l){
    for(int i = 0; i < l; i++){
        bool swapped = false;
        for(int j = 0; j < l - i - 1; j++){
            if(arr[j] > arr[j+1]){
                std::swap(arr[j], arr[j+1]);    // Swap the elements
                swapped = true;
            }
        }
        if(!swapped){
            return;
        }
    }
}
```

#### Mergesort
Mergesort is the sorting with the lowest amount of comparisons and is used by Javas standard libraries.

##### Mergesort Example
```cpp
// Merge function to merge two halves
void merge(int* arr, int* left, int* right, int leftSize, int rightSize) {
    int i = 0, j = 0, k = 0;
    while (i < leftSize && j < rightSize) {
        if (left[i] <= right[j]) {
            arr[k++] = left[i++];
        } else {
            arr[k++] = right[j++];
        }
    }
    while (i < leftSize) {
        arr[k++] = left[i++];
    }
    while (j < rightSize) {
        arr[k++] = right[j++];
    }
}

// Merge sort
void mergeSort(int* arr, int l){
    if(l < 2){      // If the length of the array is less than 2 return
        return;
    }

    int mid = l / 2;        // Find the middle of the array
    int* left = new int[mid];       // Create a new array for the left side
    int* right = new int[l - mid];    // Create a new array for the right

    for(int i = 0; i < mid; i++){       // Fill the left array with the left side of the array
        left[i] = arr[i];
    }

    for(int i = mid; i < l; i++){       // Fill the right array with the right side of the array
        right[i - mid] = arr[i];
    }

    mergeSort(left, mid);       // Recursively call mergeSort on the left side
    mergeSort(right, l - mid);    // Recursively call mergeSort on the right side

    merge(arr, left, right, mid, l - mid);  // Merge the left and right side

    delete[] left;      // Delete the left and right array
    delete[] right;
}
```


#### Bubblesort
Bubblesort has a time complexity of $O(N \cdot log(N)$.

##### Bubblesort example
```cpp
void bubblesort(int* arr, int l){
    for(int i = 0; i < l; i++){
        bool swapped = false;
        for(int j = 0; j < l - i - 1; j++){
            if(arr[j] > arr[j+1]){
                std::swap(arr[j], arr[j+1]);    // Swap the elements
                swapped = true;
            }
        }
        if(!swapped){
            return;
        }
    }
}
```

#### Quicksort
C++ uses quicksort.

#### Bucket Sort
> See [[bucket sort.pdf|Bucket Sort]]
##### Code Example
```cpp
void minSortering(int* arr){
    // Using bucket sort
    int bucket[100] = {0};  
    for(int i = 0; i < 100; i++){
        bucket[arr[i]]++;       // Increment the value in the bucket array
    }
    
    // Print the sorted array
    for(int i = 0; i < 100; i++){
        if(bucket[i] > 0){
            std::cout << i << std::endl;
        }
    }
}
```

#### Heapsort
> See [link](https://www.geeksforgeeks.org/heap-sort/?ref=header_outind)
> Heapsort has a time complexity of $2N\cdot log(N)-O(N\cdot \log(\log(N))$

**Heap sort*** is a comparison-based sorting technique based on [Binary Heap Data Structure](http://www.geeksforgeeks.org/binary-heap/). It can be seen as an optimization over [selection sort](http://www.geeksforgeeks.org/selection-sort/) where we first find the max (or min) element and swap it with the last (or first). We repeat the same process for the remaining elements. In Heap Sort, we use Binary Heap so that we can quickly find and move the max element in O(Log n) instead of O(n) and hence achieve the O(n Log n) time complexity.
