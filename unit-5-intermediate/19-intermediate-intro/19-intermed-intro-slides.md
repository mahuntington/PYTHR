<!--
title: Intro to Intermediate Python
type: introduction
duration: "00:15"
creator: Brandi Michelle Butler
-->

<h1>Intro to Intermediate Python</h1>

<!--


## Overview
This lesson starts with a recap of all of the topics covered up to this point, giving students a final chance to express their questions before we move beyond the basics. Most slides are in a "Lecture + Question -> Answer" format. It then has a very quick overview of the upcoming unit — user input and file I/O, abstraction, modules, and APIs.

- As you go through this lesson, do frequent checks for understanding. It's important that students understand everything before we add more complicated things like `itertools` and APIs.

- When you get to the new unit overview, put questions in the parking lot — there's a presentation on each topic.

## Differentiation and Extensions

- If students are breezing through this lesson, that's great! Don't stop for long on each slide.
- If students are having trouble in the recap, add in We Dos.

## Learning Objectives
In this lesson, students will:

- Confidently recap the previous units.
- Describe key components of the upcoming unit.

## Duration
20 minutes

## Suggested Agenda

| Time | Activity |
| --- | --- |
| 0:00 - 0:03 | Welcome |
| 0:04 - 0:12 | Basic Topics Recap |
| 0:13 - 0:17 | Intermediate Topics Preview |
| 0:17 - 0:20 | Summary |


## In Class: Materials
- Projector
- Internet connection
- Python 3
-->


---

## Learning Objectives
*After this lesson, you will be able to:*

- Confidently recap the previous units.
- Describe key components of the upcoming unit.

---

## Leveling Up

You're leveling up!

You have the proper foundation. Now, let's check how you're doing.


---

## Let's Review: Lists

- A collection of items stored in a single variable.
- Created with square brackets (`[]`).
- Begin counting at `0`.

```python
my_queens = ["Cersei", "Daenerys", "Arwen", "Elsa", "Guinevere"]
step_counts_this_week = [8744, 5256, 7453, 3097, 4122, 2908, 6720]

# We can also mix types.
weird_list = [1, "weird", ["nested list"], "eh?"]
```

> **Challenge:** Can you recall how to slice a section of the list? For example, items at index 2 through 5 of `step_counts_this_week`?


---

## Answer: Lists Challenge

- Python uses a `:` to represent a range of indices.
- Beware of off-by-one errors!

```python
step_counts_this_week = [8744, 5256, 7453, 3097, 4122, 2908, 6720]
days_2_thru_5 = step_counts_this_week[2:6] # Items 2, 3, 4, and 5
```

> **Pro tip:** It's `6` instead of `5` because the range is exclusive.


---

## Let's Review: Loops and Iteration

What about looping a list?

```python
my_queens = ["Cersei", "Daenerys", "Arwen", "Elsa", "Guinevere"]

for queen in my_queens:
    print(queen, "is the most powerful queen!")
```

> **Challenge:** What if I want to loop from 1 to 10 and print out the numbers? How do I do this without a data structure to loop over?


---

## Answer: Loops Challenge

To loop 1–10 without a data structure:

```python
# Remember, "i" is a common name for a counter/index in programming!
for i in range(1, 11):
    print(i)
```

- Why do you think we put `11` in the code?
- What values does this print?


---


## Let's Review: Sets

- Lists that don't have duplicates.
- Created with curly braces (`{}`) or from lists with the `set()` function.
- Aren't indexed — elements are in any order!
- Handy for storing emails, user names, and other unique elements.


```python
email_set = {'my_email@gmail.com', 'second_email@yahoo.com', "third_email@hotmail.com"}
# Or from a list:
my_list = ["red",  "yellow", "green", "red", "green"]
my_set = set(my_list)
# => {"red",  "yellow", "green"}
```



---


## Let's Review: Tuples

- Lists that can't be changed!
- Created with parentheses (`()`).
- Can't add, pop, remove, or otherwise change elements after creation.


```python
rainbow_colors_tuple = ("red", "orange", "yellow", "green", "blue", "indigo", "violet")
```

---

## Let's Review: Dictionaries

- A collection of key-value pairs.
- Created with curly braces (`{key: value, key: value}`).
- Values can be anything!

```python
my_puppy = {
    "name": "Fido",
    "breed": "Corgi",
    "age": 3,
    "vaccinated": True,
    "fave toy": ["chew sticks", "big sticks", "any sticks"]
}
```

> **Challenge:** Can you recall how to iterate (loop) over each key of `my_puppy` and print out both the key and the corresponding value?

---

## Answer: Dictionaries Challenge

Iterating a dictionary is similar to a list:

```python
for key in my_puppy:
    print(key, "-", my_puppy[key])
```

Outputs:

```
name - Fido
breed - Corgi
age - 3
vaccinated - True
fave toy - chew sticks
```

---

## Let's Review: Functions

- Bits of code that can be used repeatedly.
- Enable DRY — Don't Repeat Yourself.
- Declared with `def`, `()`, and `:`.
- Declare the function *above* the function call!

```python
# Function definition:
def say_hello():
    print("hello!")

# Run the function three times.
say_hello()
say_hello()
say_hello()
```

---

## Let's Review: Function Parameters

Parameters are in the function definition.

- Arguments are in the function call.
- Useful for very similar code with only minor variations.

**Challenge:** Rewrite the code below to use a single function with one parameter.

[Repl starter code](https://repl.it/@GAcoding/python-programming-intro-intermed?lite=true)




**Repl.it note:** The code here is:
```python
# Function definitions:
def say_hello_ada():
  print("hello, Ada")

def say_hello_alan():
  print("hello, Alan")

def say_hello_linus():
  print("hello, Linus")

# Call the functions:
say_hello_ada()
say_hello_alan()
say_hello_linus()
```

> **Challenge:** Could we do this with a single function that has a parameter called "name"?

---

## Function Parameters: Solution


[Solution](https://repl.it/@GAcoding/python-programming-intro-intermed-helloperson-solution?lite=true) 

---

## Let's Review: Return Statements

- Bring data out of a function.
- Cause the function to exit.
- Aren't a `print` statement!

```python
def multiply(x, y):
    return x * y

result = multiply(3, 4) # Result is now equal to 12.
```

---

## Let's Review: Classes

- Templates (aka, blueprints) for objects.
- Can contain methods and/or variables.
- `self` is a reference to the created object.

```python
class Animal():
    def __init__(self):
        self.energy = 50

    def get_status(self):
        if self.energy < 20:
            print("I'm hungry!")
        elif self.energy > 100:
            print("I'm stuffed!")
        else:
            print("I'm doing well!")
```

> **Challenge:** How do you declare a new `Animal`?


---

## Answer: Classes

Declaring a new `Animal` from the class:

```python
my_animal = Animal() # Creates a new Animal instance.
my_animal.get_status() # Prints "I'm doing well!"
my_animal.energy += 100 # We can access properties!
my_animal.get_status() # Prints "I'm stuffed!"
```

---

## Let's Review: Inheritance


A class can inherit properties and methods from another class.

**You Do:** Create a new class, `Dog`, which inherits from `Animal`.

- `Dog` has an extra function, `bark()`, that prints `"bark"`.
- `Dog` has an extra property, `breed`.

[Repl starter code](https://repl.it/@GAcoding/python-programming-intro-inter-classes?lite=true) 

**Repl.it note: Here is our `Animal()` class**
```python
class Animal():
def __init__(self):
self.energy = 50

def get_status(self):
if self.energy < 20:
  print("I'm hungry!")
elif self.energy > 100:
  print("I'm stuffed!")
else:
  print("I'm doing well!")

# Directions Part 1: Create a class, `Dog`.
# * `Dog` inherits from `Animal`.
# * `Dog` has an extra function, `bark`.
# * `Dog` has an extra property, `breed`.

# Directions Part 2: Declare a new dog.
# * Call the `bark()` function.
# * Give the dog a breed.
```

---

## Inheritance: Answer

[Inheritance solution](https://repl.it/@GAcoding/python-programming-intro-inheritance-answer?lite=true)

---

## Knowledge Check

We're about to move on to the next unit: Intermediate Python.

Any questions?

> Don't be shy! If you have a question, so do others!

---

## Switching Gears: Preview

The next unit covers many topics, including:

- User input*
- File I/O*
- Modules and libraries
- APIs*

*These are currently not topics that we're planning to cover, but the material is available in the [unit-5-intermediate](../) folder and if there is time we may be able to come back to these.

You don't need to memorize them now! This is just an overview.


---

## User Input and File I/O

You've seen this a few times already with `input()`.

We'll build real interactions between your Python programs and other files — or the person using your app!


---


## Modules and Libraries


We mentioned these in the pre-work!

Modules and libraries are:

- Code that others have written.
- Free to use!
- Useful extensions of the Python language (e.g., a fancy date and time formatter).

This one tells us when Mother's Day is for a given year:

[Reple code](https://repl.it/@GAcoding/python-programming-intro-inter-modules?lite=true)

**Repl.it note:** This repl.it has:

```python
from pytime import pytime
# Now we can use any function in the datetime module.

print(pytime.mother(2013))
```

---

## What Is an API?

Not only can we use code other people have written; we can also use data that they've made available to us.

We can incorporate stocks, movie ratings, or GIFs from the internet into your program!

This API lists *Star Wars* characters.

Note: change "swapi.co" to "swapi.dev" in the repl.

[Repl code](https://repl.it/@GAcoding/python-programming-intro-intermediate-apis?lite=true)

**Repl.it note:** This code is:
```python
# Import requests module.
import requests

# Call the Star Wars API (swapi).
res = requests.get('https://swapi.co/api/people').json()

# Print the result count.
print("found", res["count"], "results. Here are the first 10:\n")

# Loop through characters: Append to file and print to screen
for person in res["results"]:
print(person["name"])
```

---

## Summary and Q&A

We reviewed topics from earlier lessons:

* Lists, sets, tuples, and dictionaries.
* Loops and iteration.
* Functions, parameters, and return statements.
* Classes and inheritance.

We brushed the surface on some upcoming topics:

* User input and file I/O.
* Abstraction.
* Modules and libraries.
* APIs.

Let's jump in to it!


---

## Additional Reading and Resources

Now that you have an understanding of basic programming, here are some cool people to read about:

- **[Ada Lovelace](https://en.wikipedia.org/wiki/Ada_Lovelace):** Regarded as the first programmer.
- **[Alan Turing](https://en.wikipedia.org/wiki/Alan_Turing):** Considered the father of theoretical computer and artificial intelligence; helped crack the enigma code during World War II.
- **[Linus Torvalds](https://en.wikipedia.org/wiki/Linus_Torvalds):** Creator of Linux OS and Git.
