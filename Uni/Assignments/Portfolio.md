#### Title

##### Import
Vi importer den givende data med følgende:
```cpp
	int rows, cols;
    ifstream Filip("/home/kasper/Documents/Civilingenioer_Robotteknologi/Numeriske_Metoder/src/portfolio1/Ex1A.dat");

    Filip >> rows >> cols;

    MatDoub A(rows, cols);

	// Read the actual matrix data
    for (int j = 0; j < rows; j++) {    
        for (int i = 0; i < cols; i++) {
            Filip >> A[j][i];
        }
    }
	int bRows, bCols;
	ifstream Pont("/home/kasper/Documents/Civilingenioer_Robotteknologi/Numeriske_Metoder/src/portfolio1/Ex1b.dat");
	Pont >> bRows >> bCols;
	VecDoub B(bRows);
	for(int i = 0; i < bRows; i++) {
		Pont >> B[i];
	}
```

##### Opgave 1
Vi bruger følgende svd funktion til at finde $\vec W$:
```cpp
	VecDoub x(6);

	auto svd_solver= SVD(A);

		VecDoub W = svd_solver.w;
		MatDoub V = svd_solver.v;

		util::print(W, "W");
```
Vi får da:
```bash
W	Vector 6D:
        4752.37        806.789        58.1826        16.9671         3.5654        3.02446
```

---

##### Opgave 2
$\vec x$ er kan findes ved at solve for den med følgende funktion på vores decomposed A matrix:
```cpp
	svd_solver.solve(B,x);
	util::print(x, "x");
```
Vi får så følgende output:
```bash
x	Vector 6D:
       -24.3946        72.8921         1.7861       -63.2459       -76.9598       -17.3859
```

---

##### Opgave 3
For estimere præcisionen bruger vi følgende formel:
$$\epsilon_{residual}=\frac{||Ax-b||}{||b||}$$
Med denne formel kan vi estimere hvor tæt på vi er på den originale funktion $Ax-b$

Vi bruger formlen i følgende kode:
```cpp
	VecDoub Ax(B.size(), 0.0);
	// Compute Ax
	for (int i = 0; i < A.nrows(); ++i) {
		for (int j = 0; j < A.ncols(); ++j) {
			Ax[i] += A[i][j] * x[j];
		}
	}
	// Compute ||Ax - B||
	double norm_Ax_B = 0.0, norm_B = 0.0;
	for (int i = 0; i < B.size(); ++i) {
		norm_Ax_B += (Ax[i] - B[i]) * (Ax[i] - B[i]);
		norm_B += B[i] * B[i];
	}
	double epsilon = sqrt(norm_Ax_B) / sqrt(norm_B);
	std::cout << " epsilon_residual: " << epsilon << std::endl;
```
Med det får vi:
```bash
epsilon_residual: 0.000162328
```

Da det er et meget lille forholdsvis tal fortæller det os at den passer godt på den originale funktion.

---

##### Opgave 4
For at finde residual vector $r=Ax-b$ bruger vi følgende kode:
```cpp
	VecDoub r(40);
	for(int i = 0; i < 40; i++){
		r[i] = 0;
		for(int j = 0; j < 6; j++){
			r[i] += A[i][j]*x[j];
		}
		r[i] -= B[i];
	}

	util::print(r, "r");
```

Med det får vi:
```bash
r	Vector 40D:
       -8.55671       0.527233      -0.673201       -1.26463      -0.831363       0.464874         7.6186        1.13496      -0.401232      -0.325707      -0.217701       0.230878      -0.218717       0.656575     -0.0388285      -0.535747       0.752515       0.561871       0.324391      -0.743685      -0.744122         1.0811      -0.605121      -0.362054       0.341041       -0.89615      -0.411017     -0.0485407        1.13667        1.08557      -0.627664      -0.400131        1.06093       0.132202        0.55506       0.408264        0.87311      -0.680265       0.400403      -0.763662
```

---

##### Opgave 5
For at finde den nye $\sigma_i$ bruger vi følgende kode:
```cpp
	VecDoub sigma(r.size());
	for(int i = 0; i < sigma.size(); i++){
		sigma[i] = max(1.0, abs(r[i]));
	}

	MatDoub A_new(A);
	for(int i = 0; i < A_new.nrows(); i++){
		for(int j = 0; j < A_new.ncols(); j++){
			A_new[i][j] /= sigma[i];
		}
	}

	VecDoub B_new(B);
	for(int i = 0; i < B_new.size(); i++){
		B_new[i] /= sigma[i];
	}

	cout << "A[0][0] = " << A_new[0][0] << endl;
	cout << "B[6] = " << B_new[6] << endl;
```

Med det får vi følgende:
```bash
A[0][0] = 0.116867
B[6] = 284.403
```

---

##### Opgave 6
For at få den nye $\vec x$ bruger vi functionen fra opgave 1 til at solve for den igen:

```cpp
	VecDoub x_new(6);
	auto svd_solver_new = SVD(A_new);
	svd_solver_new.solve(B_new,x_new);


	util::print(x_new, "x_new");
```

Med det for vi følgende nye vector:
```bash
x_new	Vector 6D:
       -25.3757        72.8928        2.01114        -63.252       -76.9682       -17.3859
```