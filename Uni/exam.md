### Exam

The files initial_value_problem_funcs.h and print_table.h are created in class together with Andreas Skeem, Asge, Christian and Jacob

#### Exercise 1

For exercise 1, code from exam/exam1/ is used.

##### i

The following is the diagonal elements *W*:

```bash
11.9519        5.39727         4.7196        3.95391        3.62309         3.3683        3.09167     4.7294e-15 
```

##### ii

The following is the nullspace matrix, as a vector for this situation:

```bash
    -0.30415
    0.699544
 4.86206e-17
 3.93815e-16
   -0.425809
 1.73406e-17
-9.82417e-17
    0.486639
```

##### iii

Using SVD, we get the following $x$ vector:

```bash
-47.2484       0.368843        79.6538       -4.71197        40.4043        69.7427       -42.7351         5.2933
```

##### iv

For estimating the accuracy of the solution we use the following equation:
$$
[\delta] \approx \sqrt{\sum^n_{i=1}(\frac{V_{ji}}{\sigma_i})}, \quad\text{for }j=1,\dots,n
$$

With that we get this error:

```bash
6.43103e+13    1.47914e+14       0.277226       0.287359    9.00345e+13       0.259792       0.251235    1.02897e+14
```

#### Exercise 2

For exercise 2, code from exam/exam2/ is used.

##### i

The following is the equations evaluated at $x_0=-0.7$, $x_1-1.2$, $x_2=2.3$, $x_3=-4.1$:

```bash
2.360428       6.033039         49.323      -14.11828
```

##### ii

In this exercise the newt method in nr3.h is modified to print after each iteration.

```cpp
template<class T>
void newt(VecDoub_IO &x, Bool &check, T &vecfunc) {
    cout << setw(5) << "its" << std::setw(15) << endl;

    for(int i = 0; i < x.size(); i++){
      std::cout << std::setw(15) << "x" << i;
    }

    std::cout << setw(15) << "dx" << std::setw(15) << "c_estimate" << std::setw(15) << "error" << std::setw(15) << "backtrack" << std::setw(15) << "lamda" << std::endl;
    double dkold = 0.0;
    const Int MAXITS = 200;
    const Doub TOLF = 1.0e-8, TOLMIN = 1.0e-12, STPMX = 100.0;
    const Doub TOLX = std::numeric_limits<Doub>::epsilon();
    Int i, j, its, n = x.size();
    Doub den, f, fold, stpmax, sum, temp, test;
    VecDoub g(n), p(n), xold(n);
    MatDoub fjac(n, n);
    NRfmin<T> fmin(vecfunc);
    NRfdjac<T> fdjac(vecfunc);
    VecDoub &fvec = fmin.fvec;
    f = fmin(x);
    test = 0.0;
    for (i = 0; i < n; i++)
        if (abs(fvec[i]) > test) test = abs(fvec[i]);
    if (test < 0.01 * TOLF) {
        check = false;
        return;
    }
    sum = 0.0;
    for (i = 0; i < n; i++) sum += SQR(x[i]);
    stpmax = STPMX * MAX(sqrt(sum), Doub(n));
    for (its = 0; its < MAXITS; its++) {

    std::cout << std::setw(5) << its;
    std::cout << std::setw(15);

      for (int i = 0; i < x.size(); i++) {
          std::cout << std::setw(15) << x[i];
      }
      std::cout << std::setw(15) << norm2(diff(x, xold));                                 // dx_k
      std::cout << std::setw(15) << norm2(diff(x, xold)) / pow(dkold, 2);                 // c estimate
      std::cout << std::setw(15) <<(norm2(diff(x, xold)) / pow(dkold, 2)) * pow(norm2(diff(x, xold)),2) << endl; // error

      
      dkold = norm2(diff(x, xold));       

      fjac = fdjac(x, fvec);
      for (i = 0; i < n; i++) {
          sum = 0.0;
          for (j = 0; j < n; j++) sum += fjac[j][i] * fvec[j];
          g[i] = sum;
      }
      for (i = 0; i < n; i++) xold[i] = x[i];
      fold = f;
      for (i = 0; i < n; i++) p[i] = -fvec[i];
      LUdcmp alu(fjac);
      alu.solve(p, p);
      lnsrch(xold, fold, g, p, x, f, stpmax, check, fmin);
      test = 0.0;
      for (i = 0; i < n; i++)
          if (abs(fvec[i]) > test) test = abs(fvec[i]);
      if (test < TOLF) {
          check = false;
          return;
      }
      if (check) {
          test = 0.0;
          den = MAX(f, 0.5 * n);
          for (i = 0; i < n; i++) {
              temp = abs(g[i]) * MAX(abs(x[i]), 1.0) / den;
              if (temp > test) test = temp;
          }
          check = (test < TOLMIN);
          return;
      }
      test = 0.0;
      for (i = 0; i < n; i++) {
          temp = (abs(x[i] - xold[i])) / MAX(abs(x[i]), 1.0);
          if (temp > test) test = temp;
      }
      if (test < TOLX)
          return;
    }
    throw("MAXITS exceeded in newt");
}
```

This results in the following output:

```bash
| its |     x0     |     x1     |     x2     |     x3     |    dx     |  c_estimate  |     error     |
|-----|------------|------------|------------|------------|-----------|--------------|---------------|
|  0  |   -0.7     |   1.2      |   2.3      |  -4.1      | 4.90204   | inf          | inf           |
|  1  | 0.5126172  | 2.857618   | 5.437942   | 1.600284   | 6.823346  | 0.2839512    | 13.22021      |
|  2  | 0.2178693  | 3.668193   | 8.497817   | 0.7320922  | 3.295527  | 0.07078318   | 0.7687408     |
|  3  | -1.507067  | 5.531247   | 5.213678   | 1.012455   | 4.160595  | 0.3830942    | 6.631572      |
|  4  | -2.073374  | 5.49945    | 7.439962   | 0.5479964  | 2.343881  | 0.1354019    | 0.7438681     |
|  5  | -2.885791  | 5.335529   | 7.282719   | 0.4506036  | 0.8491773 | 0.1545707    | 0.1114612     |
|  6  | -2.418942  | 5.273654   | 6.900243   | 0.5366497  | 0.612755  | 0.8497481    | 0.3190538     |
|  7  | -2.425088  | 5.295642   | 6.933224   | 0.5507968  | 0.0425347 | 0.1132842    | 0.0002049538  |
```

##### iii

For estimating the accuracy, we calculate it using euclidian distance between the new and old point. This is based on equation $15.4.19$ in the book. This results in the following output:

```bash
         inf
    13.22021
   0.7687408
    6.631572
   0.7438681
   0.1114612
   0.3190538
0.0002049538
```

#### Exercise 3

For exercise 3, code from exam/exam3/ is used.

##### i

The following is the equation rewritten as a set of first order ODE's.

![[Pasted image 20250610204635.png]]

##### ii

When evaluating $x''(t_0)$ with $t_0=-10$ we get the following:
$-1.203537$

##### iii

When estimating the equations with midpoint we see that the value of $x(t)$ with $t=10$ results in the following:

```bash
284.3033       10.11675
```

The following is a plot of our values from evaluating $-10<=t<=10$:

![[Figure_1 1.png]]
##### iv

Looking at the plots, it can be seen as distance to the other car decreases, so does acceleration. This is logical as the behind driver would slow down when getting closer to avoid collision.

##### v

Using midpoint method with a threshold at $2\times 10^{-5}$ and with $N=20,40,80,160,\dots$ , we get the following output:

```bash
| its | N-1 |   A(hi)   | A(hi-1) - A(hi) |  alp^k   | Rich-error         | f computations |
|-----|-----|-----------|------------------|----------|---------------------|-----------------|
|  0  |  20 | 10.11675  | 0                | 0        | 0                   | 40              |
|  1  |  40 | 10.09636  | 0.02039609       | 0        | 6.952948e-310       | 80              |
|  2  |  80 | 10.09218  | 0.004177354      | 4.882538 | -0.001075934        | 160             |
|  3  | 160 | 10.09121  | 0.0009647469     | 4.33     | -0.0002897138       | 320             |
|  4  | 320 | 10.09098  | 0.0002324257     | 4.150776 | -7.376777e-05       | 640             |
|  5  | 640 | 10.09092  | 5.707916e-05     | 4.071989 | -1.858052e-05       | 1280            |
```

#### Exercise 4

For exercise 4, code from exam/exam4/ is used.

##### i

Evaluating with Simpsons Method we get the following output:

```bash
|  k  | N = 2k+1 | Intervals | Simpson Approximation   |
|-----|----------|-----------|--------------------------|
|  1  |    3     |     2     | 3.62437577127873         |
|  2  |    5     |     4     | 18.4329656151996         |
|  3  |    7     |     6     | 38.0229257255961         |
|  4  |    9     |     8     | 54.6985863043956         |
|  5  |   11     |    10     | 67.0338834632921         |
|  6  |   13     |    12     | 75.8390445843925         |
|  7  |   15     |    14     | 82.1385006799009         |
|  8  |   17     |    16     | 86.7188765573007         |
|  9  |   19     |    18     | 90.1190019698567         |
| 10  |   21     |    20     | 92.6974019755983         |
| 11  |   23     |    22     | 94.6928009366437         |
| 12  |   25     |    24     | 96.2661706770187         |
| 13  |   27     |    26     | 97.5279519448289         |
| 14  |   29     |    28     | 98.555357417475          |
| 15  |   31     |    30     | 99.4033946453056         |
| 16  |   33     |    32     | 100.111967362579         |
| 17  |   35     |    34     | 100.710520253332         |
| 18  |   37     |    36     | 101.221128143344         |
| 19  |   39     |    38     | 101.660585875026         |
| 20  |   41     |    40     | 102.041845952884         |
```

##### ii

The following is Richardson estimating the order at $N-1=2^{20}$:

```bash
|  i  |   A(h_i)    | A(h_{i-1}) - A(h_i) | alpha_k | Richardson Error Est. | f-comps | order estimate |
|-----|-------------|----------------------|---------|------------------------|---------|----------------|
|  1  |  3.62437577 | 0.00000000           | 0.00000 | 0.00001100             |       1 | -inf           |
|  2  |  3.62437577 | -14.80858984         | 0.00000 | 0.00001100             |       2 | -inf           |
|  3  | 18.43296562 | -36.26562069         | 0.40834 | -25.02875193           |       4 | -1.29216828    |
|  4  | 54.69858630 | -32.02029025         | 1.13258 | 273.53246540           |       8 | 0.17961616     |
|  5  | 86.71887656 | -13.39309081         | 2.39081 | 23.02281973            |      16 | 1.25749745     |
|  6  |100.11196736 |  -4.24203721         | 3.15723 | 6.20846429             |      32 | 1.65865976     |
|  7  |104.35400457 |  -1.35263523         | 3.13613 | 1.98585347             |      64 | 1.64898444     |
|  8  |105.70663979 |  -0.45326916         | 2.98418 | 0.68171110             |     128 | 1.57733293     |
|  9  |106.15990895 |  -0.15631573         | 2.89970 | 0.23860003             |     256 | 1.53590507     |
| 10  |106.31622468 |  -0.05462759         | 2.86148 | 0.08397392             |     512 | 1.51676125     |
| 11  |106.37085227 |  -0.01920670         | 2.84419 | 0.02962139             |    1024 | 1.50801993     |
| 12  |106.39005897 |  -0.00677221         | 2.83611 | 0.01046056             |    2048 | 1.50391209     |
| 13  |106.39683118 |  -0.00239113         | 2.83221 | 0.00369619             |    4096 | 1.50193063     |
| 14  |106.39922231 |  -0.00084483         | 2.83031 | 0.00130641             |    8192 | 1.50095884     |
| 15  |106.40006714 |  -0.00029859         | 2.82936 | 0.00046182             |   16384 | 1.50047779     |
| 16  |106.40036574 |  -0.00010555         | 2.82889 | 0.00016326             |   32768 | 1.50023849     |
| 17  |106.40047129 |  -0.00003732         | 2.82866 | 0.00005772             |   65536 | 1.50011912     |
| 18  |106.40050860 |  -0.00001319         | 2.82854 | 0.00002041             |  131072 | 1.50005959     |
| 19  |106.40052180 |  -0.00000466         | 2.82849 | 0.00000721             |  262144 | 1.50002978     |
| 20  |106.40052646 |  -0.00000165         | 2.82845 | 0.00000255             |  524288 | 1.50001388     |
| 21  |106.40052811 |  -0.00000058         | 2.82845 | 0.00000090             | 1048576 | 1.50001367     |
```

##### iii

As we use Simpsons we know the order should $4$ but we see that the order converges to $1.5$. This is because at the end points we have infinite gradients($\sqrt{x(2-x)}$).

##### iv

At $20$ iterations the estimated error is $0.00000255$.

##### v

For high precision at few computations, DE rule would be a good choice.

#### Exercise 5
For exercise 5 code from exam/exam5/ is used. Note that this code is from class and is thus based on the solutions from the classes.
##### i

The following is the expression on semi-discrete form.
![[Pasted image 20250610204738.png]]
##### ii

The following is calculated using the modified code from the classes.

The following is the estimate after running for multiple hours. This is due to the f-calculations growing exponentially. This could be optimized further by making it recursive or using other methods, this was not done:

```bash
| its |  N-1   |   A(hi)   | A(hi-1)-A(hi) |  alp^k   | Rich-error     | f computations   |
|-----|--------|-----------|----------------|----------|----------------|------------------|
|  1  |    4   | 0.144851  | -0.144851      | -0.0024335 | 1.97626e-323  | 240              |
|  2  |    8   | 0.134213  | 0.0106374      | -13.6171  | 0.000727734   | 1120             |
|  3  |   16   | 0.127361  | 0.00685278     | 1.55227   | -0.0124083    | 4800             |
|  4  |   32   | 0.124     | 0.00336114     | 2.03883   | -0.00323552   | 19840            |
|  5  |   64   | 0.122328  | 0.0016713      | 2.0111    | -0.00165295   | 80640            |
|  6  |  128   | 0.121493  | 0.000835479    | 2.0004    | -0.000835141  | 325120           |
|  7  |  256   | 0.121075  | 0.000417699    | 2.0002    | -0.000417617  | 1.3056e+06       |
|  8  |  512   | 0.120866  | 0.000208841    | 2.00008   | -0.000208823  | 5.23264e+06      |
|  9  | 1024   | 0.120762  | 0.000104418    | 2.00004   | -0.000104414  | 2.0951e+07       |
| 10  | 2048   | 0.12071   | 5.22086e-05     | 2.00002   | -5.22077e-05  | 8.38451e+07      |
| 11  | 4096   | 0.120684  | 2.61042e-05     | 2.00001   | -2.6104e-05   | 3.35462e+08      |
| 12  | 8192   | 0.12067   | 1.30521e-05     | 2         | -1.30522e-05  | 1.34201e+09      |
| 13  |16384   | 0.120664  | 6.52629e-06     | 1.99993   | -6.52673e-06  | 1.07341e+09      |
| 14  |32768   | 0.120661  | 3.26406e-06     | 1.99944   | -3.26589e-06  | -655360          |
| 15  |65536   | 0.120659  | 1.63564e-06     | 1.99558   | -1.64291e-06  | -1.31072e+06     |
| 16  |131072  | 0.120658  | 8.32454e-07     | 1.96485   | -8.62784e-07  | -2.62144e+06     |
| 17  |262144  | 0.120658  | 4.74853e-07     | 1.75308   | -6.30551e-07  | -5.24288e+06     |
```
