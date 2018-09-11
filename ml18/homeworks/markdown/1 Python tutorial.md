
# Python tutorial
(It is inspired by [this tutorial](https://github.com/kuleshov/cs228-material/blob/master/tutorials/python/cs228-python-tutorial.ipynb) and [this tutorial](https://github.com/oseledets/nla2016/blob/master/lectures/Python_Intro.ipynb))

## Basics of Python

### Some facts and references

- Python developing was started in the late 1980s by [Guido van Rossum](https://gvanrossum.github.io/), who worked at CWI institute, Amsterdam. Now he works at Dropbox.
![](../files/van.jpg)
- The author called the language in honor of popular British comedy show "Monty Pythons Flying Circus"
![](../files/MontyPythonsFlyingCircus.png)
- Dynamic type system (PHP, Ruby, Javascript, Erlang, etc) vs. static type system (C/C++, Pascal, Java, etc)
- Support multiple programming paradigms
    - object-oriented
    - imperative 
    - functional programming 
    - procedural
- Python usage in industry and academia:
    - Dropbox was written in Python
    - Google: YouTube, YouTube API and others were written in Python
    - Facebook
    - SciPy stack replaces proprietary tools for scientific computing (MATLAB, Mathemathica)
    - scikit-learn is a popular library for machine learning
    - Web-development
    - Pandas is a popular tool for data processing

#### References

* The Hitchhiker’s Guide to Python:
http://docs.python-guide.org/en/latest/

* Hard way is easier: http://learnpythonthehardway.org

* Python crash course from Google:
https://developers.google.com/edu/python/

* Official tutorial:
https://docs.python.org/2/tutorial/

* Python Tutor - code visualization (developed by MIT):
http://pythontutor.com/

* If you feel lost: https://www.codecademy.com/en/tracks/python

* Related course in HSE [here](http://math-info.hse.ru/2015-16/%D0%9F%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5_%D0%BD%D0%B0_%D1%8F%D0%B7%D1%8B%D0%BA%D0%B5_Python_%D0%B4%D0%BB%D1%8F_%D1%81%D0%B1%D0%BE%D1%80%D0%B0_%D0%B8_%D0%B0%D0%BD%D0%B0%D0%BB%D0%B8%D0%B7%D0%B0_%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D1%85)

#### Advanced references
* Al Sweigart, "Automate the Boring Stuff with Python", https://automatetheboringstuff.com
* Mark Lutz, "Python Pocket Reference" (250 pages)
* Mark Lutz, "Learning Python" (1600 pages!)

#### The Zen of Python, by Tim Peters


```python
import this
```

    The Zen of Python, by Tim Peters
    
    Beautiful is better than ugly.
    Explicit is better than implicit.
    Simple is better than complex.
    Complex is better than complicated.
    Flat is better than nested.
    Sparse is better than dense.
    Readability counts.
    Special cases aren't special enough to break the rules.
    Although practicality beats purity.
    Errors should never pass silently.
    Unless explicitly silenced.
    In the face of ambiguity, refuse the temptation to guess.
    There should be one-- and preferably only one --obvious way to do it.
    Although that way may not be obvious at first unless you're Dutch.
    Now is better than never.
    Although never is often better than *right* now.
    If the implementation is hard to explain, it's a bad idea.
    If the implementation is easy to explain, it may be a good idea.
    Namespaces are one honking great idea -- let's do more of those!


#### How to write code

- First of all your code has to be readable!
    - Other people can easily understand what your code means and what operations it performs
    - Variable, function and class names have to be meaningful
    - Style of your code has to be consistent: formatting, spaces, etc

- Style giudes:
    - [PEP8](http://legacy.python.org/dev/peps/pep-0008/) (PEP = Python Enhancement Proposal)
    - [Google Python style guide](https://google.github.io/styleguide/pyguide.html)
    - write idiomatic code http://python.net/~goodger/projects/pycon/2007/idiomatic/handout.html

#### Python installation

- In this course we will use [Python 3.6 from Anaconda distribution](https://www.anaconda.com/download/)
- Install it if you didn't do it earlier

#### Python 2 vs. Python 3

Check your Python version:
```bash
python --version
```
This course uses Python 3

Main changes in Python 3

- Key word ```print``` becomes function
- ```xrange()``` is replaced by ```range()```
- Integer division
- Some methods return iterators, not lists
- Support Unicode

### Data types

- Number
- String
- Booleans

#### Numbers

- Float 
- Complex


```python
import math

a = 12
b = 3
print(a + b)
print(a - b)
print(a * b)
print(b**a)
print(b / a)
print(b // a)
print(a % 5)
print(math.sqrt(12))
```

    15
    9
    36
    531441
    0.25
    0
    2
    3.4641016151377544



```python
a = 1 + 1j
b = 2 + 2j
print(a + b)
print(abs(a))
print(a * b)
print(a - b)
print(b**a)
```

    (3+3j)
    1.4142135623730951
    4j
    (-1-1j)
    (-0.3244472096893367+1.2481068139109326j)


- No unary operaors ++ and --


```python
a += b
print(a, b)
a-= b
print(a, b)
a *= b
print(a, b)
a /= b
print(a)
```

    (3+3j) (2+2j)
    (1+1j) (2+2j)
    4j (2+2j)
    (1+1j)



```python
import numpy as np

x = np.pi / 2
print(np.sin(x))
print(np.exp(x))
print(np.cos(x))
print(np.tan(x))
print(np.sqrt(x))
```

    1.0
    4.810477380965351
    6.123233995736766e-17
    1.633123935319537e+16
    1.2533141373155001


#### String

- Immutable type
- Sequence of symbols
- Indexing and slicing


```python
mystring = "Moscow State University"
print(mystring)
print(mystring[0])
print(mystring[4:])
print(mystring[:5])
print(mystring[2:10])
print(mystring[2:10:2])
```

    Moscow State University
    M
    ow State University
    Mosco
    scow Sta
    so t



```python
print(mystring)
print(mystring[-1])
print(mystring[-5:])
print(mystring[:-2])
print(mystring[-10:-4])
print(mystring[-10:-4:2])
print(mystring[::-1])
mystring[0] = "K" # Since strings are immutable
```

    Moscow State University
    y
    rsity
    Moscow State Universi
    Univer
    Uie
    ytisrevinU etatS wocsoM



    ---------------------------------------------------------------------------

    TypeError                                 Traceback (most recent call last)

    <ipython-input-8-6d8c380d8c09> in <module>()
          6 print(mystring[-10:-4:2])
          7 print(mystring[::-1])
    ----> 8 mystring[0] = "K"
    

    TypeError: 'str' object does not support item assignment


- Formatting output


```python
sent = "The most famous university in Russia is {}".format(mystring)
print(sent)
sent = "The most famous university in {} is {}".format("Russia", mystring)
print(sent)
sent = "The most famous university in {1} is {0}".format("Russia", mystring)
print(sent)
```

    The most famous university in Russia is Moscow State University
    The most famous university in Russia is Moscow State University
    The most famous university in Moscow State University is Russia



```python
print("The number pi is {1:.10f} and the number e is {0:.25f}".format(math.e, math.pi))
print("The number e is {:.5f}".format(math.e))
```

    The number pi is 3.1415926536 and the number e is 2.7182818284590450907955983
    The number e is 2.71828


- String methods always return new string, no inplace operations


```python
mystring = "moscow is a capital of russia   "
print(mystring)
print(mystring.capitalize())
print(mystring.upper())
print("Moscow".lower())
print(mystring.strip())
print(mystring.replace("o", "cas"))
print(len(mystring))
print(len(mystring.strip()))
```

    moscow is a capital of russia   
    Moscow is a capital of russia   
    MOSCOW IS A CAPITAL OF RUSSIA   
    moscow
    moscow is a capital of russia
    mcassccasw is a capital casf russia   
    32
    29


- Concatenation - always save result in a new string


```python
w1 = "MSU"
w2 = "CMC"
w3 = w1 + " " + w2
print(w3)
```

    MSU CMC


#### Booleans
- True
- False


```python
t = True
f = False
print(t and f)
print(not t)
print(t or f)
print(t != f)  # XOR
```

    False
    False
    True
    True



```python
a, b = 10, 5
print(a, b)
a, b = b, a   # Fast swap
print(a, b)
print(a == b)
print(a > b)
print(a < b)
print(a >= b)
```

    10 5
    5 10
    False
    False
    True
    False


### Conditions and loops

- if-elif-else
- for-loop
- while-loop

#### if-elif-else

```python
if condition1:
    pass
elif condition2:
    pass
else:
    pass
```

- Execute body of block that is first true


```python
# Try different x
x = 40
if x > 50:
    x /= 2
elif x > 70:
    x += 10
else:
    x = 0
print(x)
```

    0


#### for-loop

```python
for a in sequence:
    pass
else:
    pass
```

- Iterations over sequential data
- May have ```else``` statement in the end to check success iterations over all elements of ```sequence``` without breaks or exceptions


```python
# mystring = "Moscow"
mystring = "MSU CMC"
for letter in mystring:
    if letter != " ":
        print(letter)
    else:
        break
else:
    print("Check all letters!")
```

    M
    S
    U



```python
# Iteration over  numbers
n = 10
for i in range(n):
    if i % 2 == 0:
        print(i)
```

    0
    2
    4
    6
    8


#### while-loop

```python
while condition:
    pass
else:
    pass
```
- The same as for-loop but we do not know when this loop will be finished
- The same for ```else``` statement


```python
n = 10
while n > 0:
    n -= 1
    print(n)
else:
    print("OK!")
```

    9
    8
    7
    6
    5
    4
    3
    2
    1
    0
    OK!



```python
m = 8
while True:
    if m % 2 == 0:
        m /= 2
    else:
        break
    print(m)
else:
    print("OK!")
```

    4.0
    2.0
    1.0


### Built-in containers

| C++ | Python  |
|:--------:|:-----:|
|```std::vector```|list|
|```std::map```| dict|
|```std::set```| set|
|```std::tuple```| tuple|

#### List

- Mutable type
- Store elements of different types
- Resizeable
- Indexing and slicing are similar to string
- Complete docs [here](https://docs.python.org/3/tutorial/datastructures.html)


```python
l1 = [1, 20, 30, -3]
print(l1)
l2 = [10, "Russia", True]
print(l2)
print(l1[0])
l1[0] = 1000
print(l1)
l1.insert(10, "insert")
print(l1)
l1[11] = "test"   # This won't work
l1.append('testik')
l1
```

    [1, 20, 30, -3]
    [10, 'Russia', True]
    1
    [1000, 20, 30, -3]
    [1000, 20, 30, -3, 'insert']



    ---------------------------------------------------------------------------

    IndexError                                Traceback (most recent call last)

    <ipython-input-25-cd7975110ee2> in <module>()
          8 l1.insert(10, "insert")
          9 print(l1)
    ---> 10 l1[11] = "test"   # This won't work
         11 l1.append('testik')
         12 l1


    IndexError: list assignment index out of range



```python
for element in l1:
    print(element)
```

    1000
    20
    30
    -3
    insert



```python
l1.append("False")
print(l1)
final_value = l1.pop()
print(final_value, l1)
l1.reverse()
print(l1)
```

    [1000, 20, 30, -3, 'insert', 'False']
    False [1000, 20, 30, -3, 'insert']
    ['insert', -3, 30, 20, 1000]



```python
print(l1 + l2)
print(2 * l1)
print(2 * [l1])
l1 += l2
print(l1)
# print(l1 - l2) 
```

    ['insert', -3, 30, 20, 1000, 10, 'Russia', True, 10, 'Russia', True]
    ['insert', -3, 30, 20, 1000, 10, 'Russia', True, 'insert', -3, 30, 20, 1000, 10, 'Russia', True]
    [['insert', -3, 30, 20, 1000, 10, 'Russia', True], ['insert', -3, 30, 20, 1000, 10, 'Russia', True]]
    ['insert', -3, 30, 20, 1000, 10, 'Russia', True, 10, 'Russia', True]


- List comprehension


```python
nums = [0, 1, 2, 3, 4]
squares = []
for x in nums:
    squares.append(x ** 2)
print(squares)
# Or
squares = [x ** 2 for x in nums]
print(squares)
# And with if
even_squares = [x ** 2 for x in nums if x % 2 == 0]
print(even_squares)
```

    [0, 1, 4, 9, 16]
    [0, 1, 4, 9, 16]
    [0, 4, 16]



```python
l1= [1,2,3]
l2 = [10, 20, 30]
l = [l1, l2]
print(l)
l1[0] = 123
print(l)
l[1][2] = "test"
print(l2)
```

    [[1, 2, 3], [10, 20, 30]]
    [[123, 2, 3], [10, 20, 30]]
    [10, 20, 'test']


#### Tuple

- Immutable type as a string
- Indexing and slicing work again
- Packing and unpacking variables


```python
t1 = (1, 2)
l1 = [1, 2]
print(t1, "Required {} bytes".format(t1.__sizeof__()))
print(l1, "Required {} bytes".format(l1.__sizeof__()))
```

    (1, 2) Required 40 bytes
    [1, 2] Required 56 bytes



```python
print(t1[0], t1[1])
# print(t1[3])
```

    1 2



```python
t3 = t1 + (4, 5)
print(t3)
print(t3[1:3])
print(t3[::-1])
# t3[3] = 4
```

    (1, 2, 4, 5)
    (2, 4)
    (5, 4, 2, 1)



```python
t4 = ([1,2], [10, 20])
print(t4)
t4[0][0] = 10
print(t4)
# t4[0] = 5
```

    ([1, 2], [10, 20])
    ([10, 2], [10, 20])



```python
t5 = ()
print(len(t5))
t5 = 1,
print(len(t5))
```

    0
    1



```python
t6 = ("apple", "blueberry", "orange")
apple, bb, orange = t6
print(apple, bb, orange)
```

    apple blueberry orange



```python
l1 = [(i, i**2) for i in range(10)]
print(l1)
```

    [(0, 0), (1, 1), (2, 4), (3, 9), (4, 16), (5, 25), (6, 36), (7, 49), (8, 64), (9, 81)]


#### Dict

- Store (key, value) pairs
- Key has to be immutable type
- Values for keys can be changed
- Add new pairs


```python
d = {"cat": 12, "dog": 40}
print(d)
print(d["cat"])
print("cat" in d)
```

    {'cat': 12, 'dog': 40}
    12
    True



```python
d["fox"] = 34
print(d)
d[(1,2,3)] = "tuple"
d[[1, 2, 3]] = "list"
```

    {'cat': 12, 'dog': 40, 'fox': 34}



    ---------------------------------------------------------------------------

    TypeError                                 Traceback (most recent call last)

    <ipython-input-44-0c27e8dc2b88> in <module>()
          2 print(d)
          3 d[(1,2,3)] = "tuple"
    ----> 4 d[[1, 2, 3]] = "list"
    

    TypeError: unhashable type: 'list'



```python
for key in d:
    print(key, d[key])
```

    cat 12
    dog 40
    fox 34
    (1, 2, 3) tuple



```python
for key in d:
    print(key)
```

    cat
    dog
    fox
    (1, 2, 3)



```python
for val in d.values():
    print(val)
```

    12
    40
    34
    tuple



```python
for k, v in d.items():
    print(k, v)
```

    cat 12
    dog 40
    fox 34
    (1, 2, 3) tuple


- Dict comprehensions


```python
d2 = {key: 2*key for key in [1,2,3]}
print(d2)
```

    {1: 2, 2: 4, 3: 6}


#### Set

- Unordered collection with no duplicate elements 
- Support mathematical operations like union, intersection, difference, and symmetric difference
- Complete docs [here](https://docs.python.org/3/tutorial/datastructures.html#sets)


```python
s = set()
print(s)
string = "abracadabra"
s = set(string)
print(s, len(s))
s.add("y")
print(s, len(s))
s.remove("a")
print(s, len(s))
```

    set()
    {'r', 'd', 'b', 'a', 'c'} 5
    {'y', 'r', 'd', 'b', 'a', 'c'} 6
    {'y', 'r', 'd', 'b', 'c'} 5



```python
s1 = set([1,2,3,2,56])
s2 = set([2,45,10])
print(s1 - s2)
print(s1 & s2)
print(s1 ^ s2)
print(s1 | s2)
```

    {56, 1, 3}
    {2}
    {1, 3, 10, 45, 56}
    {1, 2, 3, 56, 10, 45}


### Other containers

- You can use other containers, which are available in module [collections](https://docs.python.org/3/library/collections.html)
- Just import it
```python
import collections
```
and you have other containers
    - Deque
    - OrderedDict
    - ...

### Functions

```python
def function_name(arguments):
#     make something
    return something
```


```python
def sign(x):
    if x > 0:
        return 'positive'
    elif x < 0:
        return 'negative'
    else:
        return 'zero'

for x in [-1, 0, 2]:
    print(sign(x))
```

    negative
    zero
    positive



```python
def say_hello(name, loud=False):
    if loud:
        print('HELLO, {}'.format(name.upper()))
    else:
        print('Hello, {}!'.format(name))

say_hello('Ivan')
say_hello('George', loud=True)
```

    Hello, Ivan!
    HELLO, GEORGE



```python
def test_func(x, *args, **kwargs):
    print(x)
    print("args elements")
    for l in args:
        print(l)
    print("kwargs elements")
    for key in kwargs:
        print(key, kwargs[key])

test_func(10, 100, "string", s1=10, r2=(1,67))
```

    10
    args elements
    100
    string
    kwargs elements
    s1 10
    r2 (1, 67)


### Classes

- Syntax of class defining is straightforward
- No destructors, because of garbage collector works 
- All methods are virtual and all members are public 
- But you can make memebers private with special approaches
- Complete doc is [here](https://docs.python.org/3/tutorial/classes.html)


```python
class Greeter:

    # Constructor
    def __init__(self, name):
        self.name = name  # Create an instance variable

    # Instance method
    def greet(self, loud=False):
        if loud:
            print('HELLO, {}!'.format(self.name.upper()))
        else:
            print('Hello, {}'.format(self.name))

g = Greeter('John')  # Construct an instance of the Greeter class
g.greet()            # Call an instance method; prints "Hello, Fred"
g.greet(loud=True)   # Call an instance method; prints "HELLO, FRED!"
```

    Hello, John
    HELLO, JOHN!


### Modules

- You can import modules with command 
```python
import module_name
```
and use functions from this module as
```python
module_name.func()
```
- Other way is to use aliases
```python
import module_name as mn
```
and use functions from this module as
```python
mn.func()
```
- Other ways of importing are not appropriate

### Exerсises

1. Implement bubble-sort, merge-sort and quick-sort algorithms as three functions with input argument &mdash; array and output is sorted array. Compare its running time depending on the size of array and also compare running time your functions with built-in method ```sort```. Plot lines time vs. array size for every sorting algorithm. Time has to be computed with [%timeit magic](http://ipython.readthedocs.io/en/stable/interactive/magics.html). How plot lines see further in this notebook. 

2. Show convergence of Taylor expansion for functions $\sin(x)$, $e^x$ and $\frac{1}{1 - x}$. Plot approximation error vs. number of items in sum. 
Compare different strategies of ordering items in sum. 
To compute required functions use ```numpy``` library

3. Implement function that tests if given number is prime or not.
Input is positive integer, output is ```True``` or ```False```.


```python
# Your code is here
```

## NumPy, SciPy & Matplotlib

- Numpy is the core library for scientific computing in Python 
- It provides a high-performance multidimensional array object, and tools for working with these arrays
- For Matlab users [here](http://scipy.github.io/old-wiki/pages/NumPy_for_Matlab_Users) is great tutorial
- SciPy provides tools for working with sparse matrices
- Matplotlib is a library to plot your data

### NumPy


```python
import numpy as np

n = 5
print(np.zeros(n))
print(np.ones(n))
print(np.random.rand(n))
print(np.random.randn(n))
print(np.random.randint(n, size=n))
print(np.eye(n))
```

    [0. 0. 0. 0. 0.]
    [1. 1. 1. 1. 1.]
    [0.73656041 0.93382644 0.43383646 0.42223709 0.06284563]
    [ 0.36866016  1.33655503  0.25258837 -0.06901819  1.72913837]
    [0 1 3 4 4]
    [[1. 0. 0. 0. 0.]
     [0. 1. 0. 0. 0.]
     [0. 0. 1. 0. 0.]
     [0. 0. 0. 1. 0.]
     [0. 0. 0. 0. 1.]]



```python
x = np.array([i for i in range(n)])
print(x, x.shape)
y = np.random.rand(n)
print(y)
print(x + y)
print(x - y)
print(2 * x)
print(x / y)
print(np.power(x, 2))
print(np.sqrt(x))
print(x.dot(y))
print(np.linalg.norm(x)**2, x.dot(x))
```

    [0 1 2 3 4] (5,)
    [0.09342036 0.92236004 0.6822449  0.7139277  0.31775153]
    [0.09342036 1.92236004 2.6822449  3.7139277  4.31775153]
    [-0.09342036  0.07763996  1.3177551   2.2860723   3.68224847]
    [0 2 4 6 8]
    [ 0.          1.08417533  2.93149867  4.20210619 12.58845221]
    [ 0  1  4  9 16]
    [0.         1.         1.41421356 1.73205081 2.        ]
    5.699639058366479
    30.0 30


- Slicing is the same as for lists but slicing for numpy array returns **view** not a copy!


```python
x_slice = x[:3]
print(x_slice)
x_slice[0] = 1000
print(x, x_slice)
x_copy = x[:3].copy()
x_copy[0] = -1000
print(x, x_copy)
```

    [0 1 2]
    [1000    1    2    3    4] [1000    1    2]
    [1000    1    2    3    4] [-1000     1     2]



```python
m, n = 3, n
X = np.random.rand(m, n)
print(X, x)
print(X.dot(x))
print(X + x)
print(X * x)
print(X - x)
print(X / x)
```

    [[0.67386614 0.87788974 0.55034435 0.56525508 0.98623144]
     [0.97144278 0.44477014 0.27003625 0.35828551 0.61902225]
     [0.83812451 0.90143581 0.53184855 0.33523693 0.88813952]] [1000    1    2    3    4]
    [681.48540469 975.97856595 844.64790682]
    [[1000.67386614    1.87788974    2.55034435    3.56525508    4.98623144]
     [1000.97144278    1.44477014    2.27003625    3.35828551    4.61902225]
     [1000.83812451    1.90143581    2.53184855    3.33523693    4.88813952]]
    [[6.73866135e+02 8.77889740e-01 1.10068869e+00 1.69576523e+00
      3.94492574e+00]
     [9.71442778e+02 4.44770135e-01 5.40072497e-01 1.07485653e+00
      2.47608899e+00]
     [8.38124505e+02 9.01435807e-01 1.06369711e+00 1.00571078e+00
      3.55255807e+00]]
    [[-9.99326134e+02 -1.22110260e-01 -1.44965565e+00 -2.43474492e+00
      -3.01376856e+00]
     [-9.99028557e+02 -5.55229865e-01 -1.72996375e+00 -2.64171449e+00
      -3.38097775e+00]
     [-9.99161875e+02 -9.85641933e-02 -1.46815145e+00 -2.66476307e+00
      -3.11186048e+00]]
    [[6.73866135e-04 8.77889740e-01 2.75172173e-01 1.88418358e-01
      2.46557859e-01]
     [9.71442778e-04 4.44770135e-01 1.35018124e-01 1.19428504e-01
      1.54755562e-01]
     [8.38124505e-04 9.01435807e-01 2.65924277e-01 1.11745642e-01
      2.22034880e-01]]



```python
print(np.random.rand(3, 4).dot(x))
```


    ---------------------------------------------------------------------------

    ValueError                                Traceback (most recent call last)

    <ipython-input-61-9dfccd37c7aa> in <module>()
    ----> 1 print(np.random.rand(3, 4).dot(x))
    

    ValueError: shapes (3,4) and (5,) not aligned: 4 (dim 1) != 5 (dim 0)



```python
X = np.random.rand(n, n)
Y = np.random.rand(n, m)
print(X.dot(Y))
print(X + Y)
```

    [[1.16839889 2.08712882 2.10651934]
     [0.96148482 2.1657093  2.10516476]
     [0.71909222 1.56909785 1.4395249 ]
     [1.33096475 1.81743333 2.45744438]
     [1.28262143 2.71700362 2.54741346]]



    ---------------------------------------------------------------------------

    ValueError                                Traceback (most recent call last)

    <ipython-input-62-6fcc4258d71e> in <module>()
          2 Y = np.random.rand(n, m)
          3 print(X.dot(Y))
    ----> 4 print(X + Y)
    

    ValueError: operands could not be broadcast together with shapes (5,5) (5,3) 



```python
X = np.random.rand(m, n)
print(X)
print(X[:, 0])
print(X[-1, :])
print(X[::2, :])
print(X[:3, :-1])
print(X[1:, 1])
```

    [[0.73611375 0.17769019 0.46688393 0.83210923 0.80990758]
     [0.89984313 0.92056154 0.7390683  0.40031946 0.94040725]
     [0.30320763 0.66888045 0.98457455 0.20539282 0.83519665]]
    [0.73611375 0.89984313 0.30320763]
    [0.30320763 0.66888045 0.98457455 0.20539282 0.83519665]
    [[0.73611375 0.17769019 0.46688393 0.83210923 0.80990758]
     [0.30320763 0.66888045 0.98457455 0.20539282 0.83519665]]
    [[0.73611375 0.17769019 0.46688393 0.83210923]
     [0.89984313 0.92056154 0.7390683  0.40031946]
     [0.30320763 0.66888045 0.98457455 0.20539282]]
    [0.92056154 0.66888045]



```python
print(X)
print(np.linalg.norm(X))
print(np.trace(X))
print(np.diag(X))
print(X[X > 0.1])
print(X.reshape(1, 15))
```

    [[0.73611375 0.17769019 0.46688393 0.83210923 0.80990758]
     [0.89984313 0.92056154 0.7390683  0.40031946 0.94040725]
     [0.30320763 0.66888045 0.98457455 0.20539282 0.83519665]]
    2.763373147327656
    2.641249833535194
    [0.73611375 0.92056154 0.98457455]
    [0.73611375 0.17769019 0.46688393 0.83210923 0.80990758 0.89984313
     0.92056154 0.7390683  0.40031946 0.94040725 0.30320763 0.66888045
     0.98457455 0.20539282 0.83519665]
    [[0.73611375 0.17769019 0.46688393 0.83210923 0.80990758 0.89984313
      0.92056154 0.7390683  0.40031946 0.94040725 0.30320763 0.66888045
      0.98457455 0.20539282 0.83519665]]



```python
print(X.min())
print(X.sum())
print(X.sum(axis=0))
print(X.max())
print(X.mean())
```

    0.17769018970386996
    9.920156449351238
    [1.93916452 1.76713218 2.19052677 1.4378215  2.58551148]
    0.9845745494200443
    0.6613437632900825


- NumPy includes implementations of almost any mathematical function and applies it element-wise to array
- Complete doc is [here](https://docs.scipy.org/doc/numpy-1.13.0/reference/)


```python
args = np.arange(0, 2.5*np.pi, 0.5*np.pi)
print(np.sin(args))
print(np.cos(args))
```

    [ 0.0000000e+00  1.0000000e+00  1.2246468e-16 -1.0000000e+00
     -2.4492936e-16]
    [ 1.0000000e+00  6.1232340e-17 -1.0000000e+00 -1.8369702e-16
      1.0000000e+00]



```python
n = 100
A = np.random.rand(n, n)
x_true = np.random.randn(n)
b = A.dot(x_true)
x = np.linalg.solve(A, b)
print(np.linalg.norm(x - x_true))
```

    2.820412884586997e-13



```python
# Try test numpy functions for your own research routines (optional)
```

### SciPy


```python
import scipy.sparse as spsp

main_diagonal = -2 * np.ones(n, )
suddiag_values = np.ones(n - 1,)
diagonals = [main_diagonal, suddiag_values, suddiag_values]
offsets = [0, 1, -1]
A = spsp.diags(diagonals, offsets, shape=(n, n), format='csr')
```

- A lot of stuff for sparse matrices in different formats
- Various functions about optimization, approximation, FFT, statistics, special functions and others
- Complete doc is [here](https://docs.scipy.org/doc/scipy/reference/)

### Matplotlib

- Library to plot different linea nd figures in 2D and 3D
- Tutorial for beginners is [here](https://matplotlib.org/users/pyplot_tutorial.html) and more complete one is [here](https://matplotlib.org/users/beginner.html)
- You can tune all parameters of plot: labels, legends, fontsize, colours, ticks, markers, linewidth and many, many others
- Label strings support $\TeX$ notation


```python
%matplotlib inline
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
```


```python
x = np.linspace(-4, 4)
y = np.power(x, 2)
plt.plot(x, y)
plt.xlabel("$x$", fontsize=12)
plt.ylabel("$y$", fontsize=12)
plt.title("Parabola $y = x^2$", fontsize=14)
```




    Text(0.5,1,'Parabola $y = x^2$')




![png](1%20Python%20tutorial_files/1%20Python%20tutorial_101_1.png)



```python
plt.figure(figsize=(10, 8))
plt.scatter(x, y, marker="x", label="Parabola, $y = x^2$", color="red")
plt.plot(x, x**3, label="Cube, $y = x^3$", linewidth=6)
plt.plot(x, 20 * np.sin(x), color="green", label="Sine, $y = 20\sin(x)$")
plt.legend(loc="best", fontsize=14)
plt.xticks(fontsize=20)
_ = plt.yticks(fontsize=20)
```


![png](1%20Python%20tutorial_files/1%20Python%20tutorial_102_0.png)



```python
x = np.linspace(1e-5, 1, 1000)
y = 1. / x
plt.figure(figsize=(10,4))
plt.subplot(1,2,1)
plt.plot(x, y)
plt.yscale("log")
plt.title("Log scale")

plt.subplot(1,2,2)
plt.plot(x, y)
plt.title("Linear scale")
plt.tight_layout()
```


![png](1%20Python%20tutorial_files/1%20Python%20tutorial_103_0.png)



```python
linear_index = np.linspace(0, np.pi, 10, endpoint=True)
mesh_x, mesh_y = np.meshgrid(linear_index, linear_index)
values_3D = np.sin(mesh_x + mesh_y)

fig = plt.figure(figsize=(10,6))
ax = fig.gca(projection="3d")

surf = ax.plot_surface(mesh_x, mesh_y, values_3D, cmap="RdBu")
ax.view_init(azim=-45, elev=30)
fig.colorbar(surf)
plt.title('The plot of $f(x, y) = \sin(x+y)$')
```




    Text(0.5,0.92,'The plot of $f(x, y) = \\sin(x+y)$')




![png](1%20Python%20tutorial_files/1%20Python%20tutorial_104_1.png)


### General rules about plots

- Legends, labels, titles, ticks must be readable!
- If most part of line is near 0, use log-scale for y-axis. The same is true for x-axis if necessary
- Plot lines about the same issue in one plot

### Exercises

1. Generate random low-rank matrix $500 \times 500$ with rank $r = 10$, perform its SVD and plot how decreases singular values
2. Compare running time of square lowrank matrix by vector multiplication in two cases:
    - Matrix is given in lowrank format, i.e. product of 2 lowrank matrices
    - Matrix is given as it is    
Plot graphs time vs. dimension of the matrix for these two cases. Add legend and axis labels.
3. Plot density function of normal distribution in 1D and 2D cases for the following parameters:
    - $\mu = 0, \sigma = 1$
    - $\mu = 1.5, \sigma = 0.1$
    - $\mu = -0.5, \sigma = 3$
    - $\mu = (1, 1), \Sigma = \begin{bmatrix} 
    2 & 0\\
    0 & 1
    \end{bmatrix}$
    - $\mu = (-1, 1), \Sigma = \begin{bmatrix} 
    2 & 0.1\\
    1 & 1
    \end{bmatrix}$
    
For 1D case you can plot all lines in the single plot with legend. For 2D case use separate plots, add titles with corresponding parameters and colorbars.


```python
# Your code is here
```
