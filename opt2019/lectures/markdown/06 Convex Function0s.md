
# Методы Оптимизации. Даниил Меркулов. Выпуклые функции. Сильно выпуклые функции.

## Convexity
### Выпуклая функция
Функция $f(x)$, **определенная на выпуклом множестве** $S \in \mathbb{R}^n$, называется выпуклой на $S$, если:
$$
f(\lambda x_1 + (1 - \lambda)x_2) \le \lambda f(x_1) + (1 - \lambda)f(x_2)
$$
для любых $x_1, x_2 \in S$ и $0 \le \lambda \le 1$.  
Если данное неравенство выполняется как строгое при $x_1 \neq x_2$ и $0 < \lambda < 1$, то функция называется строго выпуклой на $S$

![](../files/convex_f.gif)

### Примеры
Ниже приведены примеры выпуклых функций:
* $f(x) = x^p, p > 1,\;\;\; S = \mathbb{R}_+$
* $f(x) = \|x\|^p,\;\;\; p > 1, S = \mathbb{R}$
* $f(x) = e^{cx},\;\;\; c \in \mathbb{R}, S = \mathbb{R}$
* $f(x) = -\ln x,\;\;\; S = \mathbb{R}_{++}$
* $f(x) = x\ln x,\;\;\; S = \mathbb{R}_{++}$
* $f(x) = x_{(1)} + \ldots + x_{(k)},\;\;\;S = \mathbb{R}^n$ - сумма наибольших $k$ координат
* $f(X) = \lambda_{max}(X),\;\;\; X = X^T$
* $f(X) = - \log \det X, \;\;\; S = S^n_{++}$

## Epigraph
### Надграфик (эпиграф) 
Для функции $f(x)$, определенной на множестве $S \subseteq \mathbb{R}^n$, множество:
$$
\text{epi } f = \left\{[x,\mu] \in S \times \mathbb{R}: f(x) \le \mu\right\}
$$
называется эпиграфом или надграфиком функции $f(x)$

![](../files/epi.png)

### Множество подуровней
Для функции $f(x)$, определенной на множестве $S \subseteq \mathbb{R}^n$, множество:
$$
\mathcal{L}_\beta = \left\{ x\in S : f(x) \le \beta\right\}
$$
называется множеством Лебега или множеством подуровня функции $f(x)$

КАРТИНКА

## Criteria
### Дифференциальный критерий выпуклости 1-ого порядка
Функция $f(x)$, определенная на выпуклом множестве $S \subseteq \mathbb{R}^n$ выпукла тогда и только тогда, когда $\forall x,y \in S$:
$$
f(y) \ge f(x) + \nabla f^T(x)(y-x)
$$
Пусть $y = x + \Delta x$, тогда критерий перепишется в более интуитивной формулировке:
$$
f(x + \Delta x) \ge f(x) + \nabla f^T(x)\Delta x
$$

![](../files/diff_conv.png)

### Дифференциальный критерий выпуклости 2-ого порядка

Дважды непрерывно дифференцируемая функция $f(x)$, определенная на выпуклом множестве $S \subseteq \mathbb{R}^n$ выпукла тогда и только тогда, когда $\forall x \in \mathbf{relint}(S)$:
$$
\nabla^2 f(x) \succeq 0
$$
Или, что то же самое $\forall y \in \mathbb{R}^n$:
$$
\langle y, \nabla^2f(x)y\rangle \geq 0
$$


### Связь с надграфиком
Функция выпукла тогда и только тогда, когда её надграфик выпуклое множество.
### Связь с линиями уровня
Если $f(x)$ - выпуклая функция, определенная на выпуклом множестве $S \subseteq \mathbb{R}^n$, то для любого $\beta$ множество подуровня $\mathcal{L}_\beta$ выпукло.  
Функция $f(x)$, определенная на множестве $S \subseteq \mathbb{R}^n$, является замкнутой тогда и только тогда, когда все множества подуровня $\mathcal{L}_\beta$ замкнуты.
### Ограничение на прямую
Функция $f: S \to \mathbb{R}$ выпукла тогда и только тогда, когда $S$ - выпуклое множество и выпукла функция $g(t) = f(x + tv)$ на множестве $\left\{ t \mid x + tv \in S \right\}$ для всех $x \in S, v \in \mathbb{R}^n$  
PROFIT!!! Можно проверять выпуклость функции многих переменных, проверив выпуклость функции от одной переменной.

## Strong convexity
### Сильно выпуклая функция
Функция $f(x)$, **определенная на выпуклом множестве** $S \in \mathbb{R}^n$, называется $\mu$-сильно выпуклой (сильно выпуклой) на $S$, если:
$$
f(\lambda x_1 + (1 - \lambda)x_2) \le \lambda f(x_1) + (1 - \lambda)f(x_2) - \mu \lambda (1 - \lambda)\|x_1 - x_2\|
$$
для любых $x_1, x_2 \in S$ и $0 \le \lambda \le 1$ и какого-то $\mu > 0$.

КАРТИНКА С ПОДПИРАНИЕМ ПАРАБОЛЛОЙ

### Дифференциальный критерий сильной выпуклости 1-ого порядка

Функция $f(x)$, определенная на выпуклом множестве $S \subseteq \mathbb{R}^n$ $\mu$-сильно выпукла тогда и только тогда, когда $\forall x,y \in S$:
$$
f(y) \ge f(x) + \nabla f^T(x)(y-x) + \dfrac{\mu}{2}\|y-x\|^2
$$
Пусть $y = x + \Delta x$, тогда критерий перепишется в более интуитивной формулировке:
$$
f(x + \Delta x) \ge f(x) + \nabla f^T(x)\Delta x + \dfrac{\mu}{2}\|\Delta x\|^2
$$


### Дифференциальный критерий сильной выпуклости 2-ого порядка
Дважды непрерывно дифференцируемая функция $f(x)$, определенная на выпуклом множестве $S \subseteq \mathbb{R}^n$ $\mu$-сильно выпукла тогда и только тогда, когда $\forall x \in \mathbf{relint}(S)$:
$$
\nabla^2 f(x) \succeq \mu I
$$
То есть:
$$
\langle y, \nabla^2f(x)y\rangle \geq \mu \|y\|^2
$$

## Важные факты о выпуклости
* Функция $f(x)$ называется (строго) вогнутой, если функция $-f(x)$ - (строго) выпукла.
* Неравенство Йенсена для выпуклых функций:
$$
f \left( \sum\limits_{i=1}^n \alpha_i x_i \right) \leq \sum\limits_{i=1}^n \alpha_i f(x_i)
$$
для $\alpha_i \geq 0; \;\;\; \sum\limits_{i=1}^n \alpha_i = 1$ (вероятностный симплекс)  
Его аналог можно определить для бесконечномерного случая:
$$
f \left( \int\limits_{S} p(x)dx \right) \leq \int\limits_{S} f(x)p(x)dx
$$
При условии существования интегралов и $p(x) \geq 0, \;\;\; \int\limits_{S} p(x)dx = 1$
* Если выпуклы функция $f(x)$ и множество $S$, то любая точка $x^* \in S$, являющаяся точкой локального минимума, будет оптимальной для задачи минимизации функции $f(x)$ на множестве $S$. Если функция при этом строго выпукла, то решение единственно.

## Operations that preserve convexity  
  
* Сумма выпуклых функций с неотрицательными весами: $\alpha f(x) + \beta g(x), (\alpha > 0 , \beta > 0)$
* $f(Ax + b)$  выпукла, если $f(x)$ - выпукла
* Если $f_1(x), \ldots, f_m(x)$ - выпуклы, то $f(x) = \max \{f_1(x), \ldots, f_m(x)\} - выпукла$
* Если $f(x,y)$ - выпукла по $x$ для всех $y \in Y$: $g(x) = \underset{y \in Y}{\operatorname{sup}}f(x,y)$ - выпукла
* Если $f(x)$ - выпукла на $S$, то $g(x,t) = t f(x/t)$ - выпукла при $x/t \in S, t > 0$

## Examples
### Пример 1
Покажите, что функция $f(x) = \|x\|$ выпукла на $\mathbb{R}^n$.  

Решение:  
* Докажем выпуклость $f(x)$ по определению: $f(\lambda x_1 + (1-\lambda)x_2) = \|\lambda x_1 + (1-\lambda)x_2\| \le \lambda\| x_1\| + (1-\lambda)\|x_2\|$. Здесь мы использовали неравенство треугольника и $\lambda \in [0,1]$. Видно, что определение выпуклой функции выполняется.

### Пример 2
Покажите, что $f(x) = c^Tx + b$ выпукла и вогнута.  


Решение:  
* Докажем выпуклость $f(x)$ по определению:  
С одной стороны, $f(\lambda x_1 + (1-\lambda)x_2) = c^T(\lambda x_1 + (1-\lambda)x_2) + b$.  
С другой, $\lambda f(x_1) = \lambda c^Tx_1 + b; \;\;\;(1 -\lambda )f(x_2) = (1-\lambda) (c^Tx_2 + b)$
* Складывая последние два равенства, убеждаемся, что определение выпуклости выполняется. Аналогично доказывается выпуклость функции $-f(x)$, что означает вогнутость функции $f(x)$

### Пример 3
Покажите, что функция $f(x) = x^TAx$, где $A\succeq 0$ - выпукла на $\mathbb{R}^n$.  


Решение:  
* $\nabla f = (A + A^T) X$
* $f''(x) = A + A^T$ - необходимо проверить гессиан на положительную определенность, зная, что $A \succeq 0$. Так как матрица $A$ - симметрична (только для матриц, обладающих этим свойством, вводится понятие положительной определенности), и $A^T = A$ то утверждение очевидно.

### Пример 4
Показать, что функция $f(A) = \lambda_{max}(A)$ - выпукла, если $A \in S^n$  


Решение:  
* По определению собственного числа:  
$$
Ax = \lambda x \;\;\; \rightarrow \;\;\; x^TAx = \lambda x^Tx \;\;\; \rightarrow \;\;\; \lambda = y^TAy, \|y\| = 1
$$  
Значит, $\lambda_{max}(X) = \sup y^TAy$ - выпуклая функция, как супремум линейных (по $A$) функций.

### Пример 5
Доказать, что функция $-\log\det X$ выпукла по $X \in S^n_{++}$  


Решение:  
* Рассмотрим скалярную функцию одной переменной:  
$$
\begin{split}
g(t) &= f(X + tV) \\
     &= \log\det (X + tV) \\
     &= \log\det X(I + tX^{-1/2}VX^{-1/2})\\
     &= \log\det X + \log\det (I + tX^{-1/2}VX^{-1/2})\\
     &= \log\det X + \sum\limits_{i=1}^n\log(1+t \lambda_i)
\end{split}
$$  
Она является выпуклой по переменной $t$, т.к. является композицией выпуклых функций. А значит, исходная функция выпукла.

### Пример 6
При каких $a,b,c$ функция $f(x,y,z) = x^2 + 2axy + by^2 + cz^2$ выпукла, строго выпукла, сильно выпукла?
* Для начала составим матрицу Гессе: 
$$
f''(x) = \begin{pmatrix}
 2 & 2a & 0 \\
 2a & 2b & 0 \\
 0 & 0 & 2c
\end{pmatrix}
$$
* Проверка выпуклости заключается в подсчете миноров всех порядков и задании их неотрицательности.
* Проверка сильной выпуклости происхлжит согласно дифференциальному критерию 2-го порядка.

### Пример 7
Покажите с помощью критериев первого и второго порядков, что функция $f(x) = \sum\limits_{i=1}^n x_i^4$ выпукла  
easy, men  
распиши градиент и гессиан, как в прошлом семинаре

### Пример 8
При каких $x \in \mathbb{R}^n$ функция $f(x) = \dfrac{-1}{2(1 + x^Tx)}$ выпукла, строго выпукла, сильно выпукла?  
Решение:  
* Подсчитаем $\nabla f(x) = \dfrac{1}{(1 + x^Tx)}x; \;\;\;\; f''(x) = \dfrac{1}{(1 + x^Tx)^2}\left( I - \dfrac{4xx^T}{(1 + x^Tx)}x \right)$
* Применяя соответствующие критерии, получаем выпуклость при $x^Tx \le \frac{1}{3}$, строгую выпуклость при $x^Tx < \frac{1}{3}$


## Домашнее задание 5

1. Выпуклы ли следующие функции: $f(x) = e^x - 1, \; x \in \mathbb{R};\;\;\; f(x_1, x_2) = x_1x_2, \; x \in \mathbb{R}^2_{++};\;\;\; f(x_1, x_2) = 1/(x_1x_2), \; x \in \mathbb{R}^2_{++}$?
1. Докажите, что множество $S = \left\{ x \in \mathbb{R}^n \mid \prod\limits_{i=1}^n x_i \geq 1 \right\}$ выпукло.
1. Докажите, что функция $f(X) = \mathbf{tr}(X^{-1}), X \in S^n_{++}$ выпукла, а $g(X) = (\det X)^{1/n}, X \in S^n_{++}$ вогнута.
1. Расстоянием Кульбака - Лейблера между между $p,q \in \mathbb{R}^n_{++}$ называется:
$$
D(p,q) = \sum\limits_{i=1}^n (p_i \log(p_i/q_i) - p_i + q_i)
$$
Докажите, что $D(p,q) \geq 0 \forall p,q \in \mathbb{R}^n_{++}$ и $D(p,q) = 0 \leftrightarrow p = q$  
Подсказка: 
$$
D(p,q) = f(p) - f(q) - \nabla f(q)^T(p-q), \;\;\;\; f(p) = \sum\limits_{i=1}^n p_i \log p_i
$$
1. Пусть $x$ - действительнозначная переменная, принимающая конечный набор значений $a_1 < a_2 < \ldots < a_n$ с вероятностями $\mathbb{P}(x = a_i) = p_i$. Оцените выпуклость и вогнутость следующих функций от $p$ на множестве $\left\{p \mid \sum\limits_{i=1}^n p_i = 1, p_i \ge 0 \right\}$  
  * $\mathbb{E}x$
  * $\mathbb{P}\{x \ge \alpha\}$
  * $\mathbb{P}\{\alpha \le x \le \beta\}$
  * $\sum\limits_{i=1}^n p_i \log p_i$
  * $\mathbb{V}x = \mathbb{E}(x - \mathbb{E}x)^2$
  * $\mathbf{quartile}(x) = {\operatorname{inf}}\left\{ \beta \mid \mathbb{P}\{x \le \beta\} \ge 0.25 \right\}$


```python
# Stylish cell, better to compile at the beginning
from IPython.html.services.config import ConfigManager
from IPython.utils.path import locate_profile
cm = ConfigManager(profile_dir=locate_profile(get_ipython().profile))
cm.update('livereveal', {
              'fontsize': 4,
              'theme': 'simple_cyr',
              'transition': 'zoom',
              'start_slideshow_at': 'selected',
              'height': '724',
              'scroll': True,
              'slideNumber': True
})


from IPython.core.display import HTML
def css_styling():
    styles = open("./styles/custom.css", "r").read()
    return HTML(styles)
css_styling()
```

    C:\ProgramData\Anaconda3\lib\site-packages\IPython\html.py:14: ShimWarning: The `IPython.html` package has been deprecated since IPython 4.0. You should import from `notebook` instead. `IPython.html.widgets` has moved to `ipywidgets`.
      "`IPython.html.widgets` has moved to `ipywidgets`.", ShimWarning)
    C:\ProgramData\Anaconda3\lib\site-packages\ipykernel_launcher.py:4: UserWarning: locate_profile has moved to the IPython.paths module since IPython 4.0.
      after removing the cwd from sys.path.





<link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,700|Open+Sans:400,400i,700&amp;subset=cyrillic" rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Source+Code+Pro:300,400' rel='stylesheet' type='text/css'>
<style>
    @font-face {
        font-family: "Computer Modern";
        src: url('http://mirrors.ctan.org/fonts/cm-unicode/fonts/otf/cmunss.otf');
    }
    div.cell{
        /*width:80%;*/
        /*margin-left:auto !important;
        margin-right:auto;*/
    }
    h1 {
        font-family: 'Open Sans Condensed', sans-serif;
    }
    h2 {
        font-family: 'Open Sans', serif;
    }
    h3{
		font-family: 'Open Sans', serif;
        margin-top:12px;
        margin-bottom: 3px;
       }
	h4{
		font-family: 'Open Sans', serif;
       }
    h5 {
        font-family: 'Open Sans', sans-serif;
    }
    div.text_cell_render{
        font-family: 'Alegreya Sans',Computer Modern, "Helvetica Neue", Arial, Helvetica, Geneva, sans-serif;
        line-height: 1.2;
        font-size: 120%;
        width:99%;
        margin-left:auto;
        margin-right:auto;
    }
    .CodeMirror{
            font-family: "Source Code Pro";
			font-size: 90%;
    }
/*    .prompt{
        display: None;
    }*/
    .text_cell_render h1 {
        font-weight: 200;
        font-size: 50pt;
		line-height: 110%;
        color:#CD2305;
        margin-bottom: 0.5em;
        margin-top: 0.5em;
        display: block;
    }
    .text_cell_render h5 {
        font-weight: 300;
        font-size: 24pt;
        color: #CD2305;
        font-style: italic;
        margin-bottom: .5em;
        margin-top: 0.5em;
        display: block;
    }

    /*div.cell{
        width:99%;
        margin-left:1%;
        margin-right:1%; ! important
    }*/

    li {
        line-height: 110%;
    }
    .warning{
        color: rgb( 240, 20, 20 )
        }

</style>

<script>
    MathJax.Hub.Config({
                        TeX: {
                           extensions: ["AMSmath.js"]
                           },
                tex2jax: {
                    inlineMath: [ ['$','$'], ["\\(","\\)"] ],
                    displayMath: [ ['$$','$$'], ["\\[","\\]"] ]
                },
                displayAlign: 'center', // Change this to 'center' to center equations.
                "HTML-CSS": {
                    styles: {'.MathJax_Display': {"margin": 4}}
                }
        });
</script>



