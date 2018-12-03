
# Методы Оптимизации. Даниил Меркулов. Введение.

## Структура курса и семинаров

* Годовой курс. Осенний семестр теоретический. Весенний - практический.
* Экзамен после обоих семестров.
* _Лекции_ по средам в 10.45; _Семинары_ по понедельникам в 17.05 907 КПМ
* На семинаре: краткий письменный опрос по материалам предыдущего семинара, обзор необходимой теории, решение задач, сдача домашнего задания

## Расписание (примерное)

* Неделя 1. Введение
* Неделя 2. Выпуклость. Выпуклое множество
* Неделя 3. Проекция точки на множество. Отделимость
* Неделя 4. Сопряженные множества. Лемма Фаркаша
* Неделя 5. Векторное дифференцирование
* Неделя 6. Выпуклые функции. Задачи выпуклого программирования
* Неделя 7. Субдифференциал
* Неделя 8. Промежуточная контрольная

* Неделя 9. Конус возможных направлений, касательный конус, острый экстремум
* Неделя 10. Сопряжённые функции
* Неделя 11. Условия оптимальности
* Неделя 12. Двойственная задача
* Неделя 13. Задача аппроксимации
* Неделя 14. Задачи линейной алгебры
* Неделя 15. Контрольная/ сдачи/ резерв

## Приём домашнего задания

* Домашнее задание оформляется в $ \LaTeX $ или `jupyter`. Другие формы (листочки, сканы тетрадки и пр.) не принимаются :(
* Задание отправляется **единым** файлом (форматы: `.pdf`, `.ipynb`, `.zip`, `.rar`) в степике. Ссылка чуть позже.
* Возможно внесение исправлений/правок в отправленное дз. Тогда оно будет датироваться **последней** отправкой

* Каждое дз необходимо защитить устно, после чего за него будет выставлена оценка. Возможности для устной сдачи: Понедельник 18.30 - 20.00. В любой другой день в Skoltech по предварительной договоренности.
* Дедлайны по каждой домашке: 1-ый до начала следующего семинара (+1 неделя), 2-ой (+3 недели). После 1-ого и до 2-го дедлайнов стоимость дз линейно убывает до нуля.

## Система оценивания

![center](../files/grade.png)

* БОНУС! Люди, которые начнут работать над проектами (ссылка чуть позже) в этом семестре получат +20% к рейтингу (т.е. если Ваша оценка 64%, но вы работали над проектами - я поставлю 84%, т.е. максимум 120%, но оценка считается по 100%)

## Система анонимного фидбека

* После каждого семинара в канале публикуется ссылка с опросом о прошедшем семинаре. Это очень важно, оставьте пару комментариев - это анонимно.
https://t.me/mipt_optimization

## Материалы

### Оптимизация
1. [Stephen Boyd, Lieven Vandenberghe. Convex Optimization](https://web.stanford.edu/~boyd/cvxbook/bv_cvxbook.pdf)

2. [Курс по выпуклой оптимизации в Stanford'e](https://web.stanford.edu/class/ee364a/)

3. [Курс по оптимизации L. Vandenberghe в UCLA](http://www.seas.ucla.edu/~vandenbe/ee236b/ee236b.html) 

4. [Материалы по оптимизации А.Катруцы ФУПМ МФТИ](https://github.com/amkatrutsa/MIPT-Opt) 

5. [Ю.Е. Нестеров. Методы выпуклой оптимизации](http://premolab.ru/pub_files/pub5/MnexoB89z7.pdf)

6. [Б.Т. Поляк. Введение в оптимизацию](https://mega.nz/#!fctUlQoZ!id1FfSYuJKZJPP8xrpR1lnfW4HhC8NJhbN0wyO_5S3I)

7. [Видео лекций S. Boyd'a по курсу Convex Optimization в Stanford'е](https://www.youtube.com/watch?v=McLq1hEq3UY&list=PL3940DD956CDF0622)

8. [Миникурс по выпуклой оптимизации от S. Boyd'a](http://stanford.edu/~boyd/papers/cvx_short_course.html)

9. [Convex Optimization: Algorithms and Complexity by S. Bubeck](https://mega.nz/#!CVcxyDCY!225VpAG7KC9V4wZ3zPwDUEotaw1pvnD9ArL6uVmLhB0)

10. [Matrix Cookbook](https://www.math.uwaterloo.ca/~hwolkowi/matrixcookbook.pdf)


###  $ \LaTeX $
1. [Ссылка на шаблон sharelatex для дз](https://www.sharelatex.com/project/59b1398c4caa997315dfbba9)
2. [Лекция "Latex для начинающих"](https://www.youtube.com/watch?v=hSc0H143ddw)
3. [Литература](https://mega.nz/#F!vBsU3KID!lg8OGbjGJUMb8FtMPLyclg) - Настольная книга, шпоргалка и краткое введение.

## Примеры задач оптимизации или чего можно достичь, изучая этот дивный мир

### Искусственный интеллект. Машинное обучение

![center](../files/dl.png)

![center](../files/saddle.gif)

![center](../files/crit.gif)

### Задача выбора портфолио

* Переменные - количество денег, инвестируемых в конкретный актив
* Ограничения - бюджет, min/max необходимое количество инвестиций в актив(ы)
* Минимизируемый функционал: общий риск или дисперсия оценки возвращенных средств

### Индустрия мультипликации

[Статья](http://www.cs.ubc.ca/nest/imager/tr/2015/Canvases/CameraReady.pdf)

Вход: рисунок, скелет.
![center](../files/cinema_in.png)

Выход: 3d модель, подобранная с помощью алгоритмов выпуклой оптимизации и корректно поставленной задачи оптимизации.
![center](../files/cinema_out.gif)

### Общая математическая формулировка

$$\text{minimize } f_0(x)$$
$$\text{subject to } f_i(x) \le b_i, i = 1, \ldots, m$$

* $x = (x_1, \ldots, x_n)$: оптимизируемые параметры (переменные)
* $f_0: \mathbf{R}^n \rightarrow \mathbf{R}$: целевая функция
* $f_i: \mathbf{R}^n \rightarrow \mathbf{R}, i = 1, \ldots, m$: ограничения

Решение $x^*$ доставляет наименьшее значение функции $f_0(x)$ среди всех $x$, удовлетворяющих ограничениям

### История и текущее положение дел

#### Теория
* 1900 - 1970: выпуклый анализ
* 1933+ : теория вероятностей, математическая статистика

![center](../files/opt_place.png)

#### Методы
* 1947: Симплексный метод решения задач линейного программирования (Данциг)
* 1960-ые: Методы внутренней точки 
* 1970-ые: Метод эллипоидов. Субградиентные методы
* 1980-ые: Методы внутренней точки, работающие за полиномиальное время для линейного программирования
* 1987+ : Методы внутренней точки для нелинейной выпуклой оптимизации (Немировский, Нестеров)
* 2000+ : Стохастические алгоритмы невыпуклой оптимизации


#### Приложения
* до 1990: в основном, исследование операций
* после 1990: бурное развитие приложений, обработка сигналов, разработка схем
* 2007+ : нейронные сети

## Пример решения задачи оптимизации с помощью геометрической интерпретации

### Пример 1

$\text{extr}\left(x_1 + x_2\right)$ при условии $x_1^2 + 4x_2^2 \le 4$

Решение:

* Не обязательно, но полезно посмотреть на иллюстрацию ниже, чтобы представить картину полностью (иллюстрацию можно двигать и увеличивать). На ней построена целевая функция во всех точках допустимого множества


```python
!pip install plotly 
```

    Collecting plotly
    [?25l  Downloading https://files.pythonhosted.org/packages/6f/ad/3784bd093dc41d4a03804df70876143a17cdb6e50f5f1fc996c3aea1dd2a/plotly-3.2.0-py2.py3-none-any.whl (37.0MB)
    [K    100% |████████████████████████████████| 37.0MB 438kB/s ta 0:00:011    44% |██████████████▎                 | 16.5MB 2.3MB/s eta 0:00:10    65% |████████████████████▉           | 24.1MB 5.6MB/s eta 0:00:03    80% |██████████████████████████      | 29.9MB 5.3MB/s eta 0:00:02
    [?25hRequirement already satisfied: pytz in /home/bratishka/anaconda3/lib/python3.6/site-packages (from plotly) (2018.4)
    Requirement already satisfied: nbformat>=4.2 in /home/bratishka/anaconda3/lib/python3.6/site-packages (from plotly) (4.4.0)
    Requirement already satisfied: requests in /home/bratishka/anaconda3/lib/python3.6/site-packages (from plotly) (2.18.4)
    Requirement already satisfied: six in /home/bratishka/anaconda3/lib/python3.6/site-packages (from plotly) (1.11.0)
    Requirement already satisfied: decorator>=4.0.6 in /home/bratishka/anaconda3/lib/python3.6/site-packages (from plotly) (4.3.0)
    Collecting retrying>=1.3.3 (from plotly)
      Downloading https://files.pythonhosted.org/packages/44/ef/beae4b4ef80902f22e3af073397f079c96969c69b2c7d52a57ea9ae61c9d/retrying-1.3.3.tar.gz
    Requirement already satisfied: ipython_genutils in /home/bratishka/anaconda3/lib/python3.6/site-packages (from nbformat>=4.2->plotly) (0.2.0)
    Requirement already satisfied: traitlets>=4.1 in /home/bratishka/anaconda3/lib/python3.6/site-packages (from nbformat>=4.2->plotly) (4.3.2)
    Requirement already satisfied: jsonschema!=2.5.0,>=2.4 in /home/bratishka/anaconda3/lib/python3.6/site-packages (from nbformat>=4.2->plotly) (2.6.0)
    Requirement already satisfied: jupyter_core in /home/bratishka/anaconda3/lib/python3.6/site-packages (from nbformat>=4.2->plotly) (4.4.0)
    Requirement already satisfied: chardet<3.1.0,>=3.0.2 in /home/bratishka/anaconda3/lib/python3.6/site-packages (from requests->plotly) (3.0.4)
    Requirement already satisfied: idna<2.7,>=2.5 in /home/bratishka/anaconda3/lib/python3.6/site-packages (from requests->plotly) (2.6)
    Requirement already satisfied: urllib3<1.23,>=1.21.1 in /home/bratishka/anaconda3/lib/python3.6/site-packages (from requests->plotly) (1.22)
    Requirement already satisfied: certifi>=2017.4.17 in /home/bratishka/anaconda3/lib/python3.6/site-packages (from requests->plotly) (2018.4.16)
    Building wheels for collected packages: retrying
      Running setup.py bdist_wheel for retrying ... [?25ldone
    [?25h  Stored in directory: /home/bratishka/.cache/pip/wheels/d7/a9/33/acc7b709e2a35caa7d4cae442f6fe6fbf2c43f80823d46460c
    Successfully built retrying
    Installing collected packages: retrying, plotly
    Successfully installed plotly-3.2.0 retrying-1.3.3



```python
import plotly
import plotly.plotly as py
import plotly.graph_objs as go
plotly.offline.init_notebook_mode(connected=True)

import numpy as np

r = np.linspace(0,1,240)                  # radius
phi = np.linspace(0, 2*np.pi, 240)        # angle

r, phi = np.meshgrid(r, phi)              # computational grid

x1 = 2 * r * np.cos(phi)                         # parametrization
x2 = r * np.sin(phi)
z = np.zeros((240,240))

budget_set = go.Surface(x=x1, y=x2, z=z, opacity = 0.9)
f = x1+x2                                 # target function
# x1 = np.linspace(-4,4)
# x2 = np.linspace(-2,2)
# f = np.zeros((len(x1), len(x2)))

# for i in range(len(x1)):
#     for j in range(len(x2)):
#         f[i][j] = x1[i]+ x2[j]

target_function = go.Surface(x = x1, y = x2, z=f, opacity = 0.8)

data = [budget_set, target_function]

layout = go.Layout(
    title='Пример 1',
    scene=dict(
        xaxis=dict(
            title = 'x1',
            gridcolor='rgb(255, 255, 255)',
            zerolinecolor='rgb(255, 255, 255)',
            showbackground=True,
            backgroundcolor='rgb(230, 230,230)'
        ),
        yaxis=dict(
            title = 'x2',
            gridcolor='rgb(255, 255, 255)',
            zerolinecolor='rgb(255, 255, 255)',
            showbackground=True,
            backgroundcolor='rgb(230, 230,230)'
        ),
        zaxis=dict(
            title = 'f(x1, x2)',
            gridcolor='rgb(255, 255, 255)',
            zerolinecolor='rgb(255, 255, 255)',
            showbackground=True,
            backgroundcolor='rgb(230, 230,230)'
        )
    )
)

fig = go.Figure(data=data, layout=layout)
plotly.offline.iplot(fig)
```

Для столь простого примера экстремумы ясны сразу, тем не менее, воспользуемся стандартной геометрической процедурой поиска:
* Задача поиска экстремума заключается в поиске всех *инфимумов* (обратите внимание на написание), *супремумов*, *максимумов* и *минимумов* целевой функции из допустимого множества.
* Для того, чтобы найти точки максимума и минимума имеет смысл нарисовать линии уровня целевой функции в проекции на допустимое множество:


```python
import numpy as np
from matplotlib import pyplot as plt
%matplotlib inline

r = 1                 # radius
phi = np.linspace(0, 2*np.pi, 240)        # angle

r, phi = np.meshgrid(r, phi)              # computational grid

x1 = 2 * r * np.cos(phi)                         # parametrization
x2 = r * np.sin(phi)

plt.plot(x1,x2)
plt.plot(x1, -2-x1, label='-2')
plt.plot(x1, -1-x1, label='-1')
plt.plot(x1, -x1, label='0')
plt.plot(x1, 1-x1, label='1')
plt.plot(x1, 2-x1, label='2')
plt.ylim([-2,2])

plt.legend()

```




    <matplotlib.legend.Legend at 0x7fc7700841d0>




![png](01%20Introduction_files/01%20Introduction_24_1.png)


Ясно, что максимум и минимум достигается на границе целевого множества, т.е. на пересечении прямой $x_2 = c - x_1$ и эллипса $x_1^2 + 4x_2^2 = 4$.
Решение задачи, доступное любому школьнику состоит в том, чтобы решить систему уравнений 
$$
 \begin{cases}
   x_2 = c - x_1, \\
   x_1^2 + 4x_2^2 = 4.
 \end{cases}
$$

При максимальном и минимальном допустимом значении $c$.

$$
\begin{cases}
   x_2 = c - x_1, \\
   5x_1^2 - 8c x_1 + 4c^2 - 4 = 0
\end{cases}
$$

$$D = 64 c^2 - 80 c^2 + 80 = 80 - 16c^2$$

$$x_1 = \dfrac{8c \pm \sqrt{80 - 16c^2}}{10}$$

Очевидно, что $c^2 \le 5 \rightarrow c_{min} = - \sqrt{5}, c_{max} = \sqrt{5}$

Значит, $x_1 = \dfrac{4}{5}c, \; x_2 = \dfrac{1}{5}c$, тогда $\left(\dfrac{4}{\sqrt{5}}, \dfrac{1}{\sqrt{5}}\right)$ - $max$, $\left(-\dfrac{4}{\sqrt{5}}, -\dfrac{1}{\sqrt{5}}\right)$ - $min$ 

В данной задаче супремум совпадает с точкой максимума, а инфимум с точкой минимума.
Действительно:


```python
plt.plot(x1,x2)
plt.plot(x1, np.sqrt(5)-x1, label='sqrt(5)')
plt.plot(x1, -np.sqrt(5)-x1, label='-sqrt(5)')
plt.ylim([-2,2])
```




    (-2, 2)




![png](01%20Introduction_files/01%20Introduction_26_1.png)


* Искомые точки так же можно было найти, приравняв [уравнение касательной к кривой второго порядка](https://ru.wikipedia.org/wiki/Кривая_второго_порядка) к $-1$ (угловому коэффициенту прямой уровней).
* Отметим так же, что ситуация, когда решение оптимизационной задачи лежат на границе допустимого множества - частое явление.

### Пример 2

$\text{extr}\left(\left|x_1\right|^\lambda + 2 \left|x_2\right|^\lambda \right)$ при условии $x_1^2 + 4x_2^2 \le 4, \;\; \lambda \neq 0$

Решение:

* Эта задача - с параметром $\lambda$, поэтому здесь очень важно рассмотреть все случаи. Для начала ограничимся положительными значениями $\lambda$. 
* Взгляните на рисунки при $\lambda < 1, \lambda = 1, \lambda > 1$.


```python
import plotly
import plotly.plotly as py
import plotly.graph_objs as go
from plotly import tools
plotly.offline.init_notebook_mode(connected=True)

import numpy as np

precise = 40
r = np.linspace(0,1,precise)                  # radius
phi = np.linspace(0, 2*np.pi, precise)        # angle

r, phi = np.meshgrid(r, phi)              # computational grid

x1 = 2 * r * np.cos(phi)                         # parametrization
x2 = r * np.sin(phi)
z = np.zeros((precise,precise))

budget_set = go.Surface(x=x1, y=x2, z=z, opacity = 0.9)
lam = [0.5, 1, 2]
fig = tools.make_subplots(rows=1, cols=len(lam),specs=[[{'is_3d': True} for i in range(len(lam))]])
f_ = {}
for lamb in lam:
    f_[lamb] = np.abs(x1)**lamb + 2*np.abs(x2)**lamb         # target function

target_function = {}

data = [budget_set]

fig['layout'].update(title='lambda > 0')
scene = dict(
    xaxis=dict(
        title = 'x1',
        gridcolor='rgb(255, 255, 255)',
        zerolinecolor='rgb(255, 255, 255)',
        showbackground=True,
        backgroundcolor='rgb(230, 230,230)'
    ),
    yaxis=dict(
        title = 'x2',
        gridcolor='rgb(255, 255, 255)',
        zerolinecolor='rgb(255, 255, 255)',
        showbackground=True,
        backgroundcolor='rgb(230, 230,230)'
    ),
    zaxis=dict(
        title = 'f(x1, x2)',
        gridcolor='rgb(255, 255, 255)',
        zerolinecolor='rgb(255, 255, 255)',
        showbackground=True,
        backgroundcolor='rgb(230, 230,230)'
    )
)
i = 1
for lamb in lam:
    target_function[lamb] = go.Surface(x = x1, y = x2, z=f_[lamb], opacity = 0.8, name = 'lambda = '+str(lamb))
    data.append(target_function[lamb])
    fig.append_trace(budget_set, 1, i)
    fig.append_trace(target_function[lamb], 1, i)
    fig['layout']['scene'+str(i)].update(scene)
    i += 1

plotly.offline.iplot(fig)
```

По хорошему, задача решается абсолютно так же - рисованием линий уровней $f(x_1, x_2) = const$ и приравниванием уравнений касательных. Однако, в этой задаче ясно, что $(0, 0)$ - точка $min$ (она же инфимум этой задачи). Что же касается максимумов, давайте посмотрим:

$$
 \begin{cases}
   x_1^2 + 4x_2^2 = 4, \\
   \left|x_1\right|^\lambda + 2 \left|x_2\right|^\lambda = c
 \end{cases}
$$

В силу симметрии, можем рассмотреть лишь положительные значения $x_1, x_2$:

$$
 \begin{cases}
   x_1^2 + 4x_2^2 = 4, \\
   x_1^\lambda + 2 x_2^\lambda = c
 \end{cases}
$$

Вообще говоря, надо решить эту систему для всех $\lambda$ и максимального значения $c$, т.е. можно выразить $x_2 = x_2(x_1)$ и приравнять производные по $x_1$ первого и второго уравнений (условие касания). Особый интерес вызывает поведение решений при $\lambda \in (1,2)$, при всех остальных положительных значениях решения совпадают с теми, что указаны на рисунке выше. Читателю предлагается придумать способ найти аналитическое решение в этом случае.

В случае же $\lambda <0$ точка $(0,0)$ является супремумом целевой функции на заданном множестве. И эту точку стоит включить в ответ. Графики ниже.


```python
import plotly
import plotly.plotly as py
import plotly.graph_objs as go
from plotly import tools
plotly.offline.init_notebook_mode(connected=True)

import numpy as np

precise = 40
r = np.linspace(0,1,precise)                  # radius
phi = np.linspace(0, 2*np.pi, precise)        # angle

r, phi = np.meshgrid(r, phi)              # computational grid

x1 = 2 * r * np.cos(phi)                         # parametrization
x2 = r * np.sin(phi)
z = np.zeros((precise,precise))

budget_set = go.Surface(x=x1, y=x2, z=z, opacity = 0.9)
lam = [-0.5, -1, -2]
fig = tools.make_subplots(rows=1, cols=len(lam),specs=[[{'is_3d': True} for i in range(len(lam))]])
f_ = {}
for lamb in lam:
    f_[lamb] = np.abs(x1)**lamb + 2*np.abs(x2)**lamb         # target function

target_function = {}

data = [budget_set]

fig['layout'].update(title='lambda < 0')
scene = dict(
    xaxis=dict(
        title = 'x1',
        gridcolor='rgb(255, 255, 255)',
        zerolinecolor='rgb(255, 255, 255)',
        showbackground=True,
        backgroundcolor='rgb(230, 230,230)'
    ),
    yaxis=dict(
        title = 'x2',
        gridcolor='rgb(255, 255, 255)',
        zerolinecolor='rgb(255, 255, 255)',
        showbackground=True,
        backgroundcolor='rgb(230, 230,230)'
    ),
    zaxis=dict(
        title = 'f(x1, x2)',
        gridcolor='rgb(255, 255, 255)',
        zerolinecolor='rgb(255, 255, 255)',
        showbackground=True,
        backgroundcolor='rgb(230, 230,230)',
        range = [0,20]
    )
)
i = 1
for lamb in lam:
    target_function[lamb] = go.Surface(x = x1, y = x2, z=f_[lamb], opacity = 0.8, name = 'lambda = '+str(lamb))
    data.append(target_function[lamb])
    fig.append_trace(budget_set, 1, i)
    fig.append_trace(target_function[lamb], 1, i)
    fig['layout']['scene'+str(i)].update(scene)
    i += 1

plotly.offline.iplot(fig)
```

## Домашнее задание 1
Используя геометрические интерпретации, решить следующие экстремальные задачи:
1. $\text{extr}\left(\left|x_1\right|^\lambda + 2 \left|x_2\right|^\lambda \right)$ при условии $x_1^2 + 4x_2^2 = 4, \;\; \lambda \neq 0$

2. $\text{extr}\left(x_1^2 + 4x_2^2\right)$ при условии $\left|x_1\right|^\lambda + 2 \left|x_2\right|^\lambda \le 1, \;\; \lambda \neq 0$

3. $\text{extr}\left(x_1^2 + 4x_2^2\right)$ при условии $\left|x_1\right|^\lambda + 2 \left|x_2\right|^\lambda = 1, \;\; \lambda \neq 0$

В качестве решения необходимо предоставить либо:
- `jupyter notebook` с построенными графиками целевой функции и бюджетного множества, описывающие различные параметры $\lambda$. Для построения графиков можно использовать код указанный в этом семинаре, но будет проще рабоать с библиотекой `matplotlib`
- Аналитическое решение при $\lambda \in Z \neq 0$ с рассмотрением всех случаев

Плюсом будут отмечены те решения, что рассмотрят $\lambda \in R \backslash \{0\}$
