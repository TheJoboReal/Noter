---
tags:
  - lecture-slide
  - uni
course: Kunstig Inteligens
lecture: null
date: 2025-06-14
---
# Bootstrapping in Reinforcement Learning

In **reinforcement learning (RL)**, **bootstrapping** refers to the process of **updating estimates of the value function using other estimated values**, rather than waiting for the final outcome (i.e., the actual return from the environment). It's a key idea behind many RL algorithms.

## What does bootstrapping mean?

Bootstrapping in RL means that we use the current estimate of the value of a future state to help update the estimate of the current state. We're "pulling ourselves up by our own bootstraps" — using incomplete information (estimates) to refine other estimates.

---

## Where Bootstrapping Happens

Bootstrapping is used in **Temporal Difference (TD) Learning** methods, such as:

- [[Temporal Difference]]
- [[Temporal Difference#Sarsa|SARSA]]
- [[Temporal Difference#Q-Learning|Q-Learning]]

---

##  Example

Suppose you're using **TD(0)** to estimate the value function $( V(s) )$. The update rule is:
$$
V(s_t) \leftarrow V(s_t) + \alpha \left[ r_{t+1} + \gamma V(s_{t+1}) - V(s_t) \right]
$$
Where:
- $( r_{t+1} )$ is the actual reward received after taking an action in state $( s_t)$
- $( \gamma V(s_{t+1}))$ is the **bootstrapped estimate** — you're using the current estimate of the next state's value $( V(s_{t+1}) )$ to help update $( V(s_t) )$

You **don’t need to wait until the end of the episode** to compute the full return. This is what makes TD learning more efficient than Monte Carlo methods (which do not bootstrap).

---

## ✅ Pros of Bootstrapping

- **Faster learning** (can update before episode ends)
- **Lower variance** (compared to Monte Carlo methods)

---

## ❌ Cons

- Introduces **bias**, because you're updating with estimates rather than true returns

---

