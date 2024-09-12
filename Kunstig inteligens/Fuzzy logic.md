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

---

#### Rule-base
![[Pasted image 20240912125256.png]]

#### Linguistic Values and variables
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

#### Terminology
* Fuzzy set
* Membership function 𝜇
	* Gives the degree of membership/certainty/truth
* Universe of discourse
	* The range of all possible values for an input to  fuzzy system.
* Rule-base
	* Linguistic rules/variables/values, premises and actions
* Fuzzification, inference, defuzzification

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

