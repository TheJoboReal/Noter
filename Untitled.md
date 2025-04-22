### Exercise 1
The following is the extended method by hand:

![[Pasted image 20250422182435.png|500]]

### Exercise 2
To approximate the integral we use the following code:

```cpp
        double extended_midpoint(double (*func)(double), double a, double b,
         int N){ if (N <= 0) { 
         throw std::invalid_argument("N must be greater than 0"); } if (N == 1) {
                return (b - a) * func((a + b) / 2);
            }

            double mid = (a + b) / 2;
            return extended_midpoint(func, a, mid, N / 2) 
            + extended_midpoint(func, mid, b, N / 2);
        }


        void richardson_extrapolation(double (*func)(double),
         double (*method)(double (*)(double), double, double, int),
          double a, double b,
          double threshold, int its, int method_type){

            std::vector<double> a_h;
            double alpha_k = 0.0;
            double a_diff = 0.0;
            double order = 2;
            double richardson_error = threshold + threshold * 10;
            int f_calcs = 0;
            int N = 2;


            switch (method_type) {
                case 2:
                    f_calcs = 3;
                    break;
                case 3:
                    f_calcs = 3;
                    order = 4;
                    break;
                default:
                    break;
            }

            for (int i = 1; i < its; ++i) {
                a_h.push_back(method(func, a, b, pow(2, i - 1)));
            }

            std::cout << std::setw(3) << "i"
                << std::setw(20) << "A(h_i)"
                << std::setw(25) << "A(h_{i-1}) - A(h_i)"
                << std::setw(15) << "alpha_k"
                << std::setw(30) << "Richardson Error Est."
                << std::setw(15) << "f-comps"
                << std::endl;
            std::cout << std::string(120, '-') << std::endl;

            int i = 1;
            while (abs(richardson_error) > threshold){

                N = pow(2, i-1);
                if (i > 1){
                    a_diff = a_h[i-1] - a_h[i];
                }
                if (i > 2){
                    alpha_k = (a_h[i-2] - a_h[i-1])/(a_h[i-1] - a_h[i]);
                    richardson_error = (a_h[i-1]-a_h[i-2])/(alpha_k - 1);
                }

                switch(method_type) {
                    case 1:
                        f_calcs = pow(2, i-1);
                        break;

                    case 2:
                        f_calcs = (f_calcs * 2) - 1;
                        break;
                }

                std::cout << std::setw(3) << i
                << std::setw(20) << std::fixed << std::setprecision(8) << a_h[i - 1]
                << std::setw(25) << std::setprecision(8) << a_diff
                << std::setw(15) << std::setprecision(5) << alpha_k
                << std::setw(30) << std::setprecision(8) << richardson_error
                << std::setw(15) << f_calcs
                << std::endl;


                i++;
            }
            
        }
```

This gives us:

```bash
    1.13552
  i              A(h_i)      A(h_{i-1}) - A(h_i)        alpha_k       Richardson Error Est.  f-comps
----------------------------------------------------------------------------------------------------
  1         -0.05569560               0.00000000        0.00000       0.01100000              1
  2          0.38073718              -0.24856900        0.00000       0.01100000              2
  3          0.62930618              -0.38120957        0.65205      -0.71438840              4
  4          1.01051575              -0.12500285        3.04961       0.18599153              8
  5          1.13551859              -0.07921297        1.57806       0.21624531             16
  6          1.21473156              -0.06323224        1.25273       0.31342844             32
  7          1.27796381              -0.04482907        1.41052       0.15403013             64
  8          1.32279288              -0.03152180        1.42216       0.10618949            128
  9          1.35431467              -0.02221903        1.41868       0.07528774            256
 10          1.37653371              -0.01568507        1.41657       0.05333774            512
 11          1.39221878              -0.01108099        1.41549       0.03775052           1024
 12          1.40329977              -0.00783102        1.41501       0.02670039           2048
 13          1.41113079              -0.00553461        1.41492       0.01887363           4096
 14          1.41666540              -0.00391091        1.41517       0.01333084           8192
 15          1.42057631              -0.00276212        1.41591       0.00940333          16384
 16          1.42333843              -0.00194861        1.41748       0.00661612          32768
 17          1.42528704              -0.00137159        1.42069       0.00463192          65536
 18          1.42665863              -0.00096109        1.42712       0.00321124         131072
 19          1.42761972              -0.00066745        1.43994       0.00218459         262144
 20          1.42828717              -0.00045549        1.46535       0.00143429         524288
 21          1.42874266              -0.00030060        1.51529       0.00088395        1048576
 
 Reached after 1048576 f-comps.
```

### Exercise 3
We use the following DE method:
```cpp
	void DE_simple(double (*func)(double), double a, double b, int N) {
		const double hmax = 4.3;
		const double h = hmax / N;
		const double c = 1.0;

		double result = 0.0;

		for (int j = -N; j <= N; ++j) {
			double t = j * h;

			double sinh_t = std::sinh(t);
			double tanh_sinh_t = std::tanh(c * sinh_t);
			double x = 0.5 * (b + a) + 0.5 * (b - a) * tanh_sinh_t;

			double dx_dt = 0.5 * (b - a) 
			* std::pow(1.0 / std::cosh(c * sinh_t), 2) * c * std::cosh(t);

			double weight = dx_dt;

			result += func(x) * weight;
		}

		result *= h;

		std::cout << "Simple DE Approximation: " << result << std::endl;
	}

int main(){
	DErule<decltype(integrand)> rule(integrand, a, b, 3.7);

    double prev_result = rule.next();
    double result;

    for (int i = 0; i < interations; ++i) {
        result = rule.next();
        std::cout << "Iteration " << i << ": " << result << std::endl;

        if (std::abs(result - prev_result) < threshold) {
            std::cout << "Converged after " << i + 1 << " iterations" << std::endl;
            break;
        }

        prev_result = result;
    }
}
```

and we get the following output
```bash
Iteration 0: 1.022
Iteration 1: 1.545
Iteration 2: 1.43324
Iteration 3: 1.38164
Iteration 4: 1.42954
Iteration 5: 1.43004
Converged after 6 iterations
```

It can be seen that this is fairly close to the extended midpoint method with Richardson.