Summen af alle de første $N$ naturlige tal er:
$$
\sum^N_{{i=1}}i=\frac{n}{2}(n+1)
$$

```cpp
public static int sumNaturalNumbers(int n)
{
	if (n < 1)
		return 0;
	return n + sumNaturalNumbers(n-1);
}
```
