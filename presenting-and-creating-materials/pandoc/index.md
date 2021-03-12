
##  {.separator}

<h3 class="underscore">Python Programming</h3>

<hr class="underscore" />

<h2>Loops</h2>

<img src="https://i.imgur.com/VgHiXgy.png" class="full" />

---

## Discussion: A Small list

This situation isn’t so bad…

```
  visible_colors = ["red", "orange", "yellow", "green", "blue", "violet"]
  print(visible_colors[0])
  print(visible_colors[1])
  print(visible_colors[2])
  print(visible_colors[3])
  print(visible_colors[4])
  print(visible_colors[5])
```


But, what would we do if there were 1,000 items in the list to print?


<aside class="notes">
TEACHING TIPS:
Try to get students to guess at the idea of putting the print statement in a loop.

TALKING POINTS:
What if we had a list with 283,000 items in it? We can't write one line for each element. We need a way to write the print statement once and have it run for every element in the list.
One of the most powerful things that programming can do for you is automatically perform repetitive tasks. In the tiny scripts we've been writing, printing out every variable has not been much of an issue. But with lists in the game, things can get a bit more challenging. We need a way to automate some tasks so that they repeat for every item in a list.
</aside>

---

## The "For" Loop {.separator-subhead}

---

## The `for` Loop

The `for` loop always follows this form:

```
for item in collection:
  # Do something with item
```


For example:

```
visible_colors = ["red", "orange", "yellow", "green", "blue", "violet"]
for each_color in visible_colors:  
  print(each_color)
```

<aside class="notes">
  TEACHING TIPS:
  Go over the syntax. Point out the indentation; specifically, point out that it's like the if statement they learned.
  TALKING POINTS:
  We need what is called a Loop.
  A common and extremely useful type of loop is the for loop. for loops appear in several computer programming languages and get their name from the fact that they loop (or iterate) for a specific number of times: once for each item in a list.
  This code:
  Prints each element in the list.
  Begins the for loop. We loop once for each "color" in the list (visible_colors).
  Prints the current color inside the loop.
  The for loop is perfect for when you have a specific collection of items, each of which must be processed once, or for when you know that you must execute a set of instructions a specific number of times. Those are the use cases for which it was designed.
  Python will start with the first item and automatically stop after it loops with the last item.
</aside>

---


## Knowledge Check: What Will This Code Do?

Think about what the code will do before you actually run it.

<iframe height="400px" width="100%" src="https://repl.it/@SuperTernary/python-programming-for-indents?lite=true" scrolling="no" frameborder="no" allowtransparency="true" allowfullscreen="true" sandbox="allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts allow-modals"></iframe>


<aside class="notes">
  The statements inside a loop that you want to repeat must be indented like the statements inside an if block. If you have three lines of code that you want to execute on each loop iteration, each must be indented one level underneath your for line.
  Each name is met with "THUNDEROUS APPLAUSE!" because that line, and the two above it, are indented to be in the body of the for loop.
</aside>

---


## Writing a Loop

Let's write a loop to print names of guests.

First, we need a list.

- Create a local `.py` file named `my_loop.py`.
- Make your list: Declare a variable `my_list` and assign it to a list containing the names of at least five people.

<aside class="notes">

  Do this with them! Make sure they're typing with you, to practice. See if they can give you the syntax you should write.
  The code is:
  `guest_list = ["Fred", "Cho", "Brandi", "Yuna", "Nanda", "Denise"]`
</aside>

---

## Write a Loop — Make the Loop

Now we'll add the loop.

- Skip a line and write the first line of your for loop.
  - For the variable that holds each item, give it a name that reflects what the item is(e.g., name of person).
- Inside your loop, add the code to print "Hello," plus the name.

```
"Hello, Felicia!"
"Hello, Srinivas!"
```

<aside class="notes">
TEACHING TIPS:
  Do this with the class! Make sure they're typing with you, to practice. See if they can give you the syntax you should write.
  TALKING POINTS:
  Remind them that the word collection is a list; this collection is the list variable they have.
  The code is:
  `guest_list = ["Fred", "Cho", "Brandi", "Yuna", "Nanda", "Denise"]
  for guest in guest_list:  # Print out a greeting in here  
    print("Hello, " + guest + "!")`
</aside>

---


## Write a Loop Greeting Your Guest List

Our guests are definitely VIPs! Let's give them a lavish two-line greeting.

- Inside your loop, add the code to print another sentence of greeting:

```
"Hello, Srinivas!"
"Welcome to the party!"
```

<aside class="notes">
TEACHING TIPS:
  Do this with them! Make sure they're typing with you to practice. See if they can give you the syntax you should write.
  Point out the indent.
  TALKING POINTS:
  Fantastic! Now each guest is greeted by their name and welcomed to the party. Those two print() lines are executed on every iteration because both are indented to be in the for loop's code block. Think of the indented block as a unit of instructions executed as a group each time the loop runs.
  The code is:
  ```
  guest_list = ["Fred", "Cho", "Brandi", "Yuna", "Nanda", "Denise"]for guest in guest_list:  # Print out a greeting in here  print("Hello,", guest, "!")  print("Welcome to the party!")
  ```
</aside>

---

## Where Else Could We Use a Loop?

A loop prints everything in a collection of items.

- `guest_list = ["Fred", "Cho", "Brandi", "Yuna", "Nanda", "Denise"]`

What, besides a list, could we use a loop on?
**Hint**: There are six on this slide!

<aside class="notes">
  The answer is a string! We can loop through the characters.
</aside>

---

## Looping Strings

Loops are collections of strings and numbers.

Strings are collections of characters!

<iframe height="400px" width="100%" src="https://repl.it/@SuperTernary/python-programming-string-for?lite=true" scrolling="no" frameborder="no" allowtransparency="true" allowfullscreen="true" sandbox="allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts allow-modals"></iframe>

<aside class="notes">
  TEACHING TIPS:
  Don't spend more than a minute or two on this slide; it's not an exercise, just a demonstration.
  The point is to understand that a string is a collection of characters, and any collection can be looped.
  TALKING POINTS:
  You may not realize it, but a string is a collection of characters (which are also of type “str,” by the way). Just so you can see that a for loop has the same syntax for any collection, let's add the following code below what we've just written.
</aside>

---

## What About… Looping for a Specific Number of Iterations?
We have:

```
guest_list = ["Fred", "Cho", "Brandi", "Yuna", "Nanda", "Denise"]
for guest in guest_list:  
  print("Hello, " + guest + "!")
```

The loop runs for every item in the list — the length of the collection. Here, it runs six times.

What if we don't know how long guest_list will be?

Or only want to loop some of it?

<aside class="notes">
  Whenever we have a collection, such as a list or string, and we want to iterate over each item it contains, we should use a for loop. Python has internal logic for determining exactly how many times the loop should run, based on the length of the collection.
  What if we want to do something in a loop a specific number of times, but we don't have a collection to start with? Maybe we are initializing a new collection and we need to add a specific number of items to it, or maybe we just want something to run exactly 15 times. In this case, we can have the for loop iterate over a range of numbers.
</aside>

---


## Range() {.separator-subhead}

---


## Enter: Range

range(x):

- Automatically generated.
- A list that contains only integers.
- Starts at zero.
- Stops before the number you input.

`range(5)  # => [0, 1, 2, 3, 4]`


<aside class="notes">
  You can actually feed more parameters into range() to control what number it starts at and how big each step is to the next number, but we will keep it simple for now. For now, it is enough to know that if you loop over range(5), then your loop will execute five times. Let's use this in a loop...
</aside>

---

## Looping Over a Range

Let's look at range() in action:

<iframe height="400px" width="100%" src="https://repl.it/@SuperTernary/python-programming-string-for?lite=true" scrolling="no" frameborder="no" allowtransparency="true" allowfullscreen="true" sandbox="allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts allow-modals"></iframe>

<aside class="notes">
  TEACHING TIPS:
  This isn't an exercise, just a quick demo. Make sure they understand how range works.
  TALKING POINTS:
  We can see that this code prints each of the numbers in our range of 0 through 9 (10 numbers total). We don't need to have our loop print anything. This loop could be used to execute any sequence of code 10 times.
</aside>

---

## Looping Over a Range

Looping over names here is really just going through the loop four times: At index `0, 1, 2`, and `3`.
We can instead use `range()` to track the index and loop names: `range(4)` is `[0, 1, 2, 3]`.
We can then use `len(names)`, which is 4, as our range.


<iframe height="400px" width="100%" src="https://repl.it/@SuperTernary/python-programming-range-loop?lite=true" scrolling="no" frameborder="no" allowtransparency="true" allowfullscreen="true" sandbox="allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts allow-modals"></iframe>

<aside class="notes">
  TEACHING TIPS:
  This isn't an exercise, just a demo. Make sure they understand how range works. This can be a bit tricky!
  Show a regular loop again, if you need to.
  Vary the size of range (try range(4) and range(2)) so students can see the differences.
  Give a bunch of examples. Range might make sense conceptually, but it’s hard to remember (and use) its syntax.
  TALKING POINTS:
  Recall that you can use the len() function to get the length of a list. Because that will always be an integer, we can feed that value into the range() function to generate a range that contains each index in the list.
  Don't be alarmed about the function inside the function. That's fairly common. Let's break it down: len(names) will return the length of the names list; in this case, 4. The number 4 is then used as the parameter for range(), creating a range containing 0, 1, 2, and 3. These happen to all be valid indices for our list, so we can use them to modify the values stored at those indices.
</aside>

---

## Using `range()` to Modify Collections

Why would you use `range()` on a list, when you could just loop the list?

We can't do:

```
guest_list = ["Fred", "Cho", "Brandi", "Yuna", "Nanda", "Denise"]

for guest in guest_list:
    guest = "A new name"
```


But we can do:

```
guest_list = ["Fred", "Cho", "Brandi", "Yuna", "Nanda", "Denise"]


for guest in range(len(guest_list)):
    guest_list[guest] = "A new name"
```

<aside class="notes">
  TALKING POINTS:
  But there is one special use for this that is vital to know about: When we loop using for item in collection, we can't ever really modify the elements in the list. Whenever we access item, we are actually getting a copy of the item in the list. In order to modify the item in the list, we would need the index of that item in the list. And guess what range() gives us...
  We can also use enumerate() here (if you want to cover that with students).
</aside>

---

## Looping Over a Range
Let’s make this list all uppercase:

<iframe height="400px" width="100%" src="https://repl.it/@SuperTernary/python-programming-range-modification?lite=true" scrolling="no" frameborder="no" allowtransparency="true" allowfullscreen="true" sandbox="allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts allow-modals"></iframe>

<aside class="notes">
  TEACHING TIPS:
  This is a bit difficult. Make sure they understand that a range hits the index, versus a regular for loop, which makes a copy.
  Give different examples if need be.
  TALKING POINTS:
  When we run this, we see that the names list has had all the string changed to uppercase. It is necessary to use list indices if you want to modify list elements. If we tried doing the same thing with an item from that list, then the changes would only apply to the temporary copy stored in item and would never actually make it into the list.

  Note you can also use enumerate:

  ```guest_list = ["Fred", "Cho", "Brandi", "Yuna", "Nanda", "Denise"]
  for guest in enumerate(guest_list):
   guest_list[guest[0]] = guest_list[guest[0]].upper()
   print(guest_list)
```
</aside>

---

## Knowledge Check

`my_list = ['mon', 'tue', 'wed', 'thu', 'fri']`


Which of the following lines is correct?

```
for day in range(my_list): # answer A
for day in range(len(my_list)): # answer B
for day in range(my_list.length): # answer C
```

<aside class="notes">
  TEACHING TIPS:
  Give the class time to discuss and come up with an answer!
  The answer is B.
</aside>

---

## Solo Exercise: Range() (5–10 minutes)

Locally, create a new file called `range_practice.py`.

In it:

- Create a list of colors.
- Using a `for` loop, print out the list.
- Using `range()`, set each item in the list to be the number of characters in the list.
- For example:

```
["red", "green", "blue"]
# =>
[3, 5, 4]
```

<aside class="notes">
  - If students seem a bit lost when you get here, run this as a partner exercise.
  - This is tough! Give them a bit before going over the answer. Bring up your own file or a repl.it and write it, talking through each step.
</aside>

---

## Quick Review: `for` Loops and Range

`for` Loops

```
# On a list (a collection of strings)guest_list = ["Fred", "Cho", "Brandi", "Yuna", "Nanda", "Denise"]
for guest in guest_list:
  print("Hello, " + guest + "!")

# On a string (a collection of characters)
my_string = "Hello, world!"
for character in my_string:
  print(character)

##### Range #####
range(4)  # => [0, 1, 2, 3]

# Using Range as an Index Counter
names = ["Flint", "John Cho", "Billy Bones", "Nanda Yuna"]
for each_name in range(4):
  print(names[each_name])
```

---

## Quick Review: `for` Loops and Range

```
# OR

for each_name in range(len(names)):
  print(names[each_name])

# Using Range to Change a List:

guest_list = ["Fred", "Cho", "Brandi", "Yuna", "Nanda", "Denise"]
for guest in range(len(guest_list)):
  guest_list[guest] = "A new name"
```

<aside class="notes">
  Quickly review key takeaways.
  Ask if there are questions. That was a lot to cover!
</aside>

---

## The “While” Loop {.separator-subhead}

---

## The `while` Loop

What about "While the bread isn't brown, keep cooking"?
Python provides two loop types.

`for`:

- You just learned!
- Loops over collections a finite number of times.

`while`:

- You're about to learn!
- When your loop could run an indeterminate number of times.
- Checks if something is `True` _(the bread isn't brown yet)_ and runs until it's set to `False` _(now the bread is brown, so stop)_.

<aside class="notes">
  Now that we’ve learned how to write for loops to iterate lists and how to use range to dynamically generate loops, we’re going to transition to while loops. I’m going to show you how to write while loops, and then you’re going to practice while loops with your partner.
</aside>

---

## `while` Loop Syntax

```
# While <something> is True:
#     Run some code.
#     If you're done, set the <something> to False.
#     Otherwise, repeat.

a = 0
while a < 10:
    print(a)
    a += 1
```

<aside class="notes">
  Call out that it won't print 10.
  Call out the indents!
</aside>

---

## `while` Loop Syntax

<img src="https://imgur.com/JXI7Rcr.png" />

<aside class="notes">
  We won't always have the luxury of a collection of discrete data items for controlling our loop. Frequently, we will need to write a loop that will run an unknown number of times. This is what the while loop is for. It's another loop construct that will continue to iterate while a given condition is True. These loops are quite useful for data sets of unknown sizes, or for when we need to loop until some value changes.
  Outside of our while loop, we create the variable “a,” which we'll use as our conditional. We then start our loop. We say to loop "while a is less than 10." Then, in the loop, we print a and add one to its value. Once the value of a reaches 10, the loop condition evaluates to False and the loop finishes.
</aside>

---

## `while`: Be Careful!
Don't _ever_ do:						

```
a = 0
while a < 10:
    print(a)
```
And don't _ever_ do:
```
a = 0
while a < 10:
    print(a)
a += 1
```

Your program will run forever!
If your program ever doesn't leave a loop, hit `control-c` (break).

<aside class="notes">
  TEACHING TIPS:
  We're telling them this in advance of practicing, in case they do it!
  Make it clear why this runs forever.
  TALKING POINTS:
  While loops present a potential "gotcha" in programming: the infinite loop. Because the while loop only terminates when a condition turns to False, it's possible to write the loop in such a way that it never terminates. This creates a serious bug in your code where the loop never, ever returns control to the app, and it will freeze indefinitely. The way to avoid this is to always remember to update your conditional variable inside your loop block.
</aside>

---

## Filling a Glass of Water

Create a new local file, `practicing_while.py`.

In it, we'll create:

- A variable for our current glass content.
- Another variable for the total capacity of the glass.

Let's start with this:

```
glass = 0
glass_capacity = 12
```

Can you start the `while` loop?

<aside class="notes">
  TEACHING TIPS:
  Make sure students are typing this with you and not just copying and pasting the code.
  Before you go to the next slide (adding the loop), see if they can guess the syntax.
  TALKING POINTS:
  Can you think of the mental process you follow when pouring water into a glass? You start with an empty glass and begin adding water to it, right? While you are adding the water, you must constantly check to see if the glass has reached its maximum capacity. If it has, you then stop pouring. Otherwise, you continue adding water. Let's see how that would work as a while loop...
  We need a variable for our current glass content and we need one for the total capacity of the glass.
  What we want to do is add water to the glass one unit at a time until the glass reaches capacity. Said another way: While the glass contains less than its capacity, add another unit of water. Can you start the loop code before we move to the next slide?
</aside>

---


## Filling a Glass of Water
Add the loop:

```
glass = 0
glass_capacity = 12

while glass < glass_capacity:
    glass += 1  # Here is where we add more water.
```


That’s it!

<aside class="notes">
TALKING POINTS:
  We declare our glass variable and set it to 0 water, currently. Then, we declare our glass capacity and set it to 12 units. Next, we set up our while loop. We want to loop while the glass has a value less than glass_capacity. Inside of our loop, we add 1 unit of water to our glass. Each time the loop runs, it checks the value of glass to see if it has reached the same value as glass_capacity. The loop stops once glass reaches 12, conveniently before we spill.
</aside>

---

## Side Note: `input()`

Let's do something more fun. With a partner, you will write a program that

- Has a user guess a number.
- But first, how do we have users input numbers? Using `input()`.

```
user_name = input("Please enter your name:")
# user_name now has what the user typed.
print(user_name)
```

Erase the code in your `practicing_while.py` file and replace it with the above code.
Run it! What happens? Does it work?

<aside class="notes">
  TEACHING TIPS:
  Don't put learners into partner pairs yet; make sure they all have input working on their own.
  Demo that the text in the input prompt can be anything, and the variable user_name can be named anything.
  There is a lesson teaching input in depth (in Unit 5), so you just need them to be able to use the code. Put any further questions into the parking lot.
  TALKING POINTS:
  While loops are also great for guessing games. Let's use a small function called input() to get some user input so that they can take guesses about our secret number. Here's how input() works.
  Whatever string you put in the parentheses is printed to the screen. The user then has the opportunity to type something. The script will wait patiently for the user until something is typed and entered (a perfect example of a while loop in the Python internals). When the user hits enter, the string they typed is stored in the variable user_name above.
</aside>

---

## A Guessing Game (5 minutes)

Now, get with a partner! Let's write the game.

Decide who will be the driver and who will be the navigator. Add this to your existing file.

- Set a variable, answer to "5" (yes, a string!).
- Prompt the user for a guess and save it in a new variable, `guess`.
- Create a `while` loop, ending when `guess` is equal to `answer`.
- In the `while` loop, prompt the user for a new `guess`.
- After the `while` loop, print: "You did it!"

Discuss with your partner: Why do we need to make an initial variable before the loop?

<aside class="notes">
  DURATION: 5 minutes
  TEACHING TIPS:
  Run this as a partner exercise. Set students up in pairs, then walk around to make sure they're all working and no one is stuck.
  TALKING POINTS:
  Now that you know how to accept input from the keyboard, make a game where the player must correctly guess a number. The game will continually prompt the user to enter a guess if they did not guess correctly. Once they correctly guess the number, the program congratulates them and exits. Can you think of how this would be written?
  You need a variable to hold the correct answer. You need another variable to hold each subsequent guess. We will need to compare the guess to the answer and, if it is wrong, ask the user again for a guess. This sounds like we will be repeatedly asking for a guess while the previous guess was incorrect.
  One thing to keep in mind is that input() returns a string, so if the user types 5 it will result in the string "5". You cannot compare numbers to strings in Python. To work around this for a number guessing game, set your correct answer variable to be the string of the number (e.g., "4" or "9") instead of the number itself. This way, when you do your loop comparison, you'll be comparing the same types.
</aside>

---

## A Guessing Game (Solution)


```
answer = "4"
guess = input("Guess what number I'm thinking of (1-10): ")
while guess != answer:
    guess = input("Nope, try again: ")
print("You got it!")
```


How'd you do? Questions?

<aside class="notes">
  Walk through the answer here. Show it working. Check for understanding.
</aside>

---


## Conclusion {.separator-subhead}

---


## Python Programming: Loops {.separator-subhead}

**Lesson Summary**

Today we explored:

- Loops:
  - Common, powerful control structures that let us efficiently deal with repetitive tasks.
- `for` loops:
  - Used to iterate a set number of times over a collection (e.g., list, string, or using `range`).
  - `range()` uses indices, not duplicates, so it lets you modify the collection.

  ---


## Python Programming: Loops {.separator-subhead}

**Lesson Summary**

Today we explored:

- `while` loops:
  - Run until a condition is False.
  - Used when you don't know how many times you need to iterate.

Up Next:
{Add Upcoming Lesson Topics/Pre-Work}

<aside class="notes">
  Briefly recap.
  Check for understanding! Bring up an interpreter if needed, or if you have extra time. The more they see this, the better!
  Go over next steps.
  Encourage students to check out all the additional resources at the end of each presentation.
</aside>

---

## Q&A {.separator-subhead}

<aside class="notes">
  Answer any questions learners may have at this point.
</aside>

---

## Additional Resources {.separator-subhead}

---

## Additional Reading

[Learn Python Programming: Loops Video](https://www.youtube.com/watch?v=JkQ0Xeg8LRI)

[Python: For Loop](https://wiki.python.org/moin/ForLoop)

[Python: Loops](https://www.tutorialspoint.com/python/python_loops.htm)

<aside class="notes">
  Encourage students to go through these in their spare time, especially if they need more help.
</aside>

---

## Exit Tickets {.separator-subhead}

<aside class="notes">
  Don’t forget to fill out your exit ticket before you leave!  
</aside>

---
