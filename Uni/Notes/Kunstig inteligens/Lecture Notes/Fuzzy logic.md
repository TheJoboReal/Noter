---
tags:
  - lecture-note
  - uni
course: Kunstig Inteligens
date: 2025-02-01
---
--- 
#### Fuzzy and Crisp sets
Indicator function for a crisp set A:
$$
I_{A}(x)\rightarrow\{0,1\}
$$
Membership function for a fuzzy set A:
$$
\mu_{A}(x)\rightarrow [0,1]
$$
![[Pasted image 20240912125019.png]]
![[Pasted image 20240912125059.png]]
![[Pasted image 20240912125207.png]]
![[Pasted image 20240912125215.png]]
![[Pasted image 20240919123334.png]]

---

#### Rule-base
![[Pasted image 20240912125256.png]]

#### Linguistic Values and variables
##### **1. Linguistic Variables**

A **linguistic variable** is a variable whose values are words or sentences in natural language, rather than numerical values. It plays a critical role in fuzzy logic systems, where inputs and outputs may not be precisely measurable.

- **Example**: A common linguistic variable might be "Temperature".
- **Possible Values**: "Cold", "Warm", "Hot"

**Key Characteristics:**

- They handle imprecision and vagueness, much like human language.
- They are often used when precise numerical information is unavailable or unnecessary.

##### **2. Linguistic Values**

**Linguistic values** are the specific words or labels that describe the possible states or conditions of a linguistic variable.

- **Example**: For the linguistic variable "Temperature", some possible linguistic values could be:
    - "Very Cold"
    - "Cold"
    - "Warm"
    - "Hot"
    - "Very Hot"

**Fuzzy Sets**:

- Each linguistic value corresponds to a **fuzzy set**. For example, the linguistic value "Cold" may be represented by a fuzzy set, defining how cold is perceived at different numerical temperatures (e.g., 0°C might be "very cold", while 15°C might be "slightly cold").
- Membership functions help assign degrees of membership to each element of a fuzzy set.

---

##### **3. Example of Linguistic Variables and Values**

| Linguistic Variable | Linguistic Values                    |
| ------------------- | ------------------------------------ |
| Temperature         | Very Cold, Cold, Warm, Hot, Very Hot |
| Speed               | Slow, Moderate, Fast                 |
| Traffic             | Light, Moderate, Heavy               |
| Comfort Level       | Uncomfortable, Neutral, Comfortable  |

##### **4. Use of Linguistic Variables and Values in Fuzzy Systems**

In fuzzy logic systems:

1. **Linguistic variables** replace crisp numerical variables.
2. **Linguistic values** represent vague, imprecise concepts that humans can easily understand.
3. A **fuzzification process** transforms crisp input values into fuzzy sets.
4. A **defuzzification process** converts fuzzy sets back into a precise output.

![[Pasted image 20240912125310.png]]
Linguistic Rules:
If premise/antecedent, Then consequent/action


![[Pasted image 20240912131331.png]]
* Fuzzification:
	* Mapping crisp inputs to fuzzy inputs

* Inference
	* Rule matching
	
* Defuzzification
	* Transforming the fuzzy outputs to crisp outputs(example so that we can press the brake down with a crisp value)

##### Example
Specify linguistic variables, linguistic values, and a fuzzy rule-base for the “Level Controller” (LC) in the system shown below. Your input is the water level provided by the “Level Transmitter” (LT). The goal is to maintain the water level in the tank at around 75% of total capacity and you can regulate the influx of water by opening and closing the “Level Control Valve”
![[Pasted image 20240912145536.png]]
**Linguistic variable** could be: water level, Pump RPM, 
**Linguistic Values** could be Water level(high, low, medium), 

****

#### Terminology
* Fuzzy set
* Membership function 𝜇
	* Gives the degree of membership/certainty/truth
* Universe of discourse
	* The range of all possible values for an input to  fuzzy system.
* Rule-base
	* Linguistic rules/variables/values, premises and actions
* Fuzzification, inference, defuzzification
![[Pasted image 20240919123153.png]]

#### Probability vs Fuzzyness
**Probability** describes the uncertainty of an
event occurrence.

**Fuzziness** describes event ambiguity.
Whether an event occurs is *random*.
To what degree it occurs/is true is fuzzy.

![[Pasted image 20240912131740.png]]
#### Fuzzy Operations
* Cardinality
$$
|A|=\sum_{X}\mu_{A}(x)
$$
* Union
$$
\mu_{A\cup B}=max(\mu_{A},\mu_{B})
$$
* Intersection
$$
\mu_{A\cap B}=min(\mu_{A},\mu_{B})
$$
* Complement
$$
\mu \bar{A}=1-\mu_{A}
$$

##### Examples
Suppose that $X=\{a,b,c,d,e\}$ and that $\mu_{A}(a)=0.5$, $\mu_{A}(b)=0$, $\mu_{A}(c)=0.2$, $\mu_{A}(d)=0$, $\mu_{A}(e)=1$

a. Compute the cardinality of $A$:
$$
0.5+0+0.2+0+1=1.7
$$
b. Compute the complement of $A$, namely $\bar{A}$:
$\bar{A}=\{$
$\mu_{\bar{A}}(a)=1-0.5=0.5$,
$\mu_{\bar{A}}(b)=1-0=0$,
$\mu_{\bar{A}}(c)=1-0.2=0.8$,
$\mu_{\bar{A}}(d)=1-0$,
$\mu_{\bar{A}}(e)=1-1=0$,
$\}$

c. Compute $A\cup \bar{A}$:
$max(\mu_{A},\mu_{\bar{A}})(a)=0.5$
$max(\mu_{A},\mu_{\bar{A}})(b)=0$
$max(\mu_{A},\mu_{\bar{A}})(c)=0.8$
$max(\mu_{A},\mu_{\bar{A}})(d)=1$
$max(\mu_{A},\mu_{\bar{A}})(e)=1$

d. Compute $A\cap \bar{A}$:
