
# Lecture 1. Introduction to machine learning: definitions, problem statements and prominent achievements

## Approximate syllabus

* Introduction. Problems, definitions
* k-NN and metric learning
* Optimization in machine learning problems
* Regression
* SVM
* Representation learning
* Clustering
* Neural Networks and Deep Learning

## Resources

- Google
- Books
    - [Pattern Recognition and Machine Learning by C. Bishop](http://users.isr.ist.utl.pt/~wurmd/Livros/school/Bishop%20-%20Pattern%20Recognition%20And%20Machine%20Learning%20-%20Springer%20%202006.pdf)
    - [Machine Learning: Probabilistic Perspective by K. Murphy](https://mitpress.mit.edu/books/machine-learning-0)
    - [Elements of Statistical Learning by T. Hastie](https://web.stanford.edu/~hastie/Papers/ESLII.pdf)
    - [Deep Learning by I. Goodfellow](http://www.deeplearningbook.org/)
- Related courses
    - Coursera: [1](https://www.coursera.org/learn/vvedenie-mashinnoe-obuchenie), [2](https://www.coursera.org/learn/machine-learning)
    - [Lecture notes by K.V. Vorontsov](http://www.machinelearning.ru/wiki/index.php?title=%D0%9C%D0%B0%D1%88%D0%B8%D0%BD%D0%BD%D0%BE%D0%B5_%D0%BE%D0%B1%D1%83%D1%87%D0%B5%D0%BD%D0%B8%D0%B5_%28%D0%BA%D1%83%D1%80%D1%81_%D0%BB%D0%B5%D0%BA%D1%86%D0%B8%D0%B9%2C_%D0%9A.%D0%92.%D0%92%D0%BE%D1%80%D0%BE%D0%BD%D1%86%D0%BE%D0%B2%29)
    - [MSU CMC course](http://www.machinelearning.ru/wiki/index.php?title=%D0%9C%D0%B0%D1%88%D0%B8%D0%BD%D0%BD%D0%BE%D0%B5_%D0%BE%D0%B1%D1%83%D1%87%D0%B5%D0%BD%D0%B8%D0%B5_%28%D1%81%D0%B5%D0%BC%D0%B8%D0%BD%D0%B0%D1%80%D1%8B%2C_%D0%92%D0%9C%D0%9A_%D0%9C%D0%93%D0%A3%29)
    - [HSE course](http://wiki.cs.hse.ru/%D0%9C%D0%B0%D0%B9%D0%BD%D0%BE%D1%80_%D0%98%D0%BD%D1%82%D0%B5%D0%BB%D0%BB%D0%B5%D0%BA%D1%82%D1%83%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D0%B9_%D0%B0%D0%BD%D0%B0%D0%BB%D0%B8%D0%B7_%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D1%85/%D0%92%D0%B2%D0%B5%D0%B4%D0%B5%D0%BD%D0%B8%D0%B5_%D0%B2_%D0%B0%D0%BD%D0%B0%D0%BB%D0%B8%D0%B7_%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D1%85)
- Repository with [lectures](https://github.com/amkatrutsa/intro_ml)

## Required background

- Linear algebra
- Optimization
- Probability theory and statistics
- Python

## Main tools

- [Anaconda distribution](https://www.anaconda.com/download/) with Python 3 and:
    - Jupyter Notebook
    - NumPy & SciPy 
    - scikit-learn
    - pandas
    - matplotlib
    - seaborn
- [TensorFlow](https://www.tensorflow.org/) or related framework

## Related research fields

- Artificial Intelligence
- Statistical Data Analysis
- Pattern Recognition
- Statistical Learning
- Data Mining
- Data Science

## Objectives

- Academia
    - Propose idea
    - Prove some general facts about algorithm
    - Investigate model data sets
    - Evaluation function
- Industry
    - Solve poorly stated real bussiness problem
    - Scalability is crucial
    - Usually available large or huge data set
    - Evaluation is not directly related to stated problem

## Definitions and concepts

- $X$ - set of samples
- $Y$ - set of outputs in case of supervised learning
- Other types of learning may not require $Y$
- Target function $y: X \to Y$
- Given *training set* $\{x_1, \dots, x_{m}\} \subset X$ and *known outputs* $y_i = y(x_i), \; i = 1,\dots, m$
- Find *algorithm* or *decision function* $a: X \to Y$ which approximates $y$ over the whole $X$

### Questions

1. How represent $X$ and $Y$?
2. How define $a$?
3. What does "approximate" mean?

### Samples representation: features

- $f_j: X \to D_j$, $j = 1,\dots,n$ is feature map
- Features types
    - binary: $D_j = \{0, 1\}$
    - categorical: $|D_j| < \infty$
    - ordinal: $|D_j| < \infty$ and $D_j$ is ordered
    - continuous: $D_j = \mathbb{R}^n$
- Design matrix
$$
F = \| f_j(x_i) \|_{m \times n}
$$

### Outputs representation

- $Y = \{0,1 \}$ &mdash; binary classification
- $Y = \{0,1, \dots, M \}$ &mdash; multiclass classification
- $Y = \mathbb{R}$ &mdash; regression
- $Y$ is a finite ordinal set &mdash; ranking

### All models are wrong but some are useful

- Predictive model is a parametric family of functions
$$
A = \{ g(x, \theta) \; | \; \theta \in \Theta \},
$$
where $g(x, \theta): X \times \Theta \to Y$ is a fix function and $\Theta$ is feasible set of parameters.
- Example: linear model
    - For regression and ranking 
    $$
    g(x, \theta) = \sum_{j=1}^n \theta_j f_j(x)
    $$ 
    - For binary classification 
    $$
    g(x, \theta) = \mathrm{sign}\left( \sum_{j=1}^n \theta_j f_j(x) \right)
    $$

### Learning algorithm

- Learning algorithm $\mu$ maps given training set $D = (X, Y)^{m}$ to algorithm $a \in A$
$$
\mu \; : \; D \to a  
$$
- Training step
$$
a = \mu(D)
$$
- Testing step
$$
\hat{Y} = a(\hat{X})
$$
- Validation step: check quality of $\hat{Y}$
- Application step: use the best $a$ for new real data

### Loss function

- How check the quality of our algorithm $a$?
- Introduce some function $L(a, x_i)$ which gives the error of algorithm $a$ given the sample $x_i$
    - Classification 
    $$
    L(a, x_i) = [a(x_i) \neq y(x_i)]
    $$
    - Regression
    $$
    L(a, x_i) = (a(x_i) - y(x_i))^2
    $$
- Empirical risk
$$
Q(a, X) = \frac{1}{|X|} \sum_{x_i \in X} L(a, x_i)
$$

### From learning to optimization

- We search algorithm that minimizes empirical risk over training set...
$$
a^* = \arg\min_{a \in A} Q(a, X)
$$
but things are not that easy:). Why?



### Overfitting and generatlization ability

- Statistical Learning Theory is about this: [VC-dimension](https://en.wikipedia.org/wiki/VC_dimension), [Rademacher complexity](https://en.wikipedia.org/wiki/Rademacher_complexity) and other...
- Overfitting is a phenomenon, when train loss significantly decreases and test loss increases
- Model complexity is important
- Picture from [here](https://www.analyticsvidhya.com/blog/2015/02/avoid-over-fitting-regularization/)

![](../files/underfitting-overfitting.png)

- Model example is below, but first we study how to estimate generalization ability

### Empirical estimation of generalization ability 

- Hold out
    - Split train set 
    $$
    X = X^k \sqcup X^l
    $$
    - Subset $X^l$ is used for training, $X^k$ is used for testing
    $$
    Q(\mu(X^l), X^k) \to \min
    $$
- Leave-one-out
$$
\frac{1}{m}\sum_{i=1}^m L(\mu(X \backslash  x_i), x_i) \to \min
$$
- Cross validation
    - Train set is splitted 
    $$
    X = \bigsqcup_{l=1}^k X^l
    $$
    - Every $X^l$ is used as test subset, other blocks are used as train set
    $$
    \frac{1}{k} \sum_{l=1}^k L(\mu(X \backslash X^l), X^l) \to \min
    $$

### Overfitting and underfitting model example 

- Consider function 
$$
y = \sin (1.5 \pi x), \quad x \in [0, 1]
$$
- Try to approximate this function by polynomial of different degrees


```python
%matplotlib inline
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
sns.set()
from sklearn.preprocessing import PolynomialFeatures
from sklearn.linear_model import LinearRegression
from sklearn.model_selection import cross_val_score
```


```python
def true_fun(X):
    return np.sin(1.5 * np.pi * X)
```


```python
n_samples = 30
degrees = [2, 3, 4, 7, 5, 125]

X = np.sort(np.random.rand(n_samples))
y = true_fun(X) + np.random.randn(n_samples) * 0.2
```


```python
plt.figure(figsize=(14, 8))
for i in range(len(degrees)):
    ax = plt.subplot(2, np.ceil(len(degrees) / 2), i + 1)

    polynomial_features = PolynomialFeatures(degree=degrees[i],
                                             include_bias=False)
    linear_regression = LinearRegression()
    X_current = polynomial_features.fit_transform(X[:, np.newaxis])
    linear_regression.fit(X_current, y)

    # Evaluate the models using crossvalidation
    scores = cross_val_score(linear_regression, X_current, y, cv=5, scoring="neg_mean_squared_error")

    X_test_init = np.linspace(0, 1, 100)
    X_test = polynomial_features.fit_transform(X_test_init[:, np.newaxis])
    ax.plot(X_test_init, linear_regression.predict(X_test), label="Model")
    ax.plot(X_test_init, true_fun(X_test_init), label="True function")
    ax.scatter(X, y, edgecolor='b', s=20, label="Samples")
    ax.set_xlabel("$x$", fontsize=16)
    ax.set_ylabel("y", fontsize=16)
    ax.legend(loc="best")
    ax.set_title("Degree {}\n CV MSE = {:.2e}(+/- {:.2e})".format(
        degrees[i], -scores.mean(), scores.std()), fontsize=16)
plt.tight_layout()
```


![png](1%20Introduction.%20Definitions.%20Problems_files/1%20Introduction.%20Definitions.%20Problems_21_0.png)


## Workflow

- Dive into data and informal problem 
- Data preprocessing and feature engineering
- Create model
- From learning problem to optimization problem
- Solving optimization and overfitting problems
- Evaluate the quality of the final model
- Introducing in production

## Examples of real cases

### Classification

- Spam detection
- Object recognition
- Scoring
- Loan default prediction
- Diseases diagnostic
- Churn prediction
- Anomaly detection
- Text categorization

### Regression

- Time series forecasting: financial series, energy consumption and others
- Mortgage price
- Revenue prediction
- Prediction mechanical properties of materials
- Ranking
- Inverse problems in PDE

### Representation learning

- Visualization
- Automatic feature engineering
- Dimensionality reduction

## Achievements and breakthroughs

### Reinforcement learning

![](../files/reinforcement.png)

### Representation learning
![](../files/tsne_mnist.png)

### Recommender system: NetFlix Prize

![](../files/netflix.jpg)

### Deep learning

![](../files/dl_detection.png)

## Recap

- Main definitions
- Problem statements
- Overfitting and generalization ability
- Workflow
- Real cases
