
# Домашнее задание 6

1. Выпуклы ли следующие функции: $f(x) = e^x - 1, \; x \in \mathbb{R};\;\;\; f(x_1, x_2) = x_1x_2, \; x \in \mathbb{R}^2_{++};\;\;\; f(x_1, x_2) = 1/(x_1x_2), \; x \in \mathbb{R}^2_{++}$?

2. Докажите, что множество $S = \left\{ x \in \mathbb{R}^n_{++} \mid \prod\limits_{i=1}^n x_i \geq 1 \right\}$ выпукло.

3. Докажите, что функция $f(X) = \mathbf{tr}(X^{-1}), X \in S^n_{++}$ выпукла, а $g(X) = (\det X)^{1/n}, X \in S^n_{++}$ вогнута.

4. Расстоянием Кульбака - Лейблера между между $p,q \in \mathbb{R}^n_{++}$ называется:
$$
D(p,q) = \sum\limits_{i=1}^n (p_i \log(p_i/q_i) - p_i + q_i)
$$
Докажите, что $D(p,q) \geq 0 \forall p,q \in \mathbb{R}^n_{++}$ и $D(p,q) = 0 \leftrightarrow p = q$  
Подсказка: 
$$
D(p,q) = f(p) - f(q) - \nabla f(q)^T(p-q), \;\;\;\; f(p) = \sum\limits_{i=1}^n p_i \log p_i
$$

5. Пусть $x$ - действительнозначная переменная, принимающая конечный набор значений $a_1 < a_2 < \ldots < a_n$ с вероятностями $\mathbb{P}(x = a_i) = p_i$. Оцените выпуклость и вогнутость следующих функций от $p$ на множестве $\left\{p \mid \sum\limits_{i=1}^n p_i = 1, p_i \ge 0 \right\}$  
  * $\mathbb{E}x$
  * $\mathbb{P}\{x \ge \alpha\}$
  * $\mathbb{P}\{\alpha \le x \le \beta\}$
  * $\sum\limits_{i=1}^n p_i \log p_i​$
  * $\mathbb{V}x = \mathbb{E}(x - \mathbb{E}x)^2$
  * $\mathbf{quartile}(x) = {\operatorname{inf}}\left\{ \beta \mid \mathbb{P}\{x \le \beta\} \ge 0.25 \right\}$
