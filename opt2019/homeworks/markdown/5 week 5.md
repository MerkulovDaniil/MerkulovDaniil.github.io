
# Домашнее задание 5

1. Найти $\nabla f(x)$, если $f(x) = \|Ax\| - \|x^TA\|$

2. Найти $\nabla f(x), f''(x)$, если $f(x) = \dfrac{-1}{1 + x^Tx}$

3. Найти $f'(X)$, если $f(X) = \det X$  
  Примечание: здесь под $f'(X)$ подразумевается оценка фунции $f(X)$ первого порядка в смысле разложения в ряд Тейлора:
  $$
    f(X + \Delta X) \approx f(X) + \mathbf{tr}(f'(X)^T \Delta X)
  $$

4. Найти $f''(X)$, если $f(X) = \log \det X$  
  Примечание: здесь под $f''(X)$ подразумевается оценка фунции $f(X)$ второго порядка в смысле разложения в ряд Тейлора:
  $$
  f(X + \Delta X) \approx f(X) + \mathbf{tr}(f'(X)^T \Delta X) + \frac{1}{2}\mathbf{tr}(\Delta X^T f''(X) \Delta X)
  $$

5. Найти градиент и гессиан функции $f : \mathbb{R}^n \to \mathbb{R}$
$$
f(x) = \log \sum\limits_{i=1}^m \exp (a_i^Tx + b_i), \;\;\;\; a_1, \ldots, a_m \in \mathbb{R}^n; \;\;\;  b_1, \ldots, b_m  \in \mathbb{R}
$$
