# Assignment: Object-Oriented Programming - Instances and Inheritance

In this assignment, you'll practice:

* `if/else` statements
* Lists and iteration
* Defining classes and instantiating objects/instances
* Defining and using instance variables
* Defining and calling instance methods
* Inheritance

This assignment can be challenging! Feel free to collaborate with other students on this assignment, but you should still hand in your own assignment.

## Deliverables & Submitting

You know what you're doing by now! **Fork**/**Clone**/**Commit**/**Push**/**Submit** :grin:

---

# Exercise 1: Insert Coin(s)

The objective of this exercise is to write a simple game, where the player can **collect treasure** and **do battle**.

Every time the player collects 10 gold coins, they should **level up**. But, if they lose all their health points, the game restarts.

Each player needs to keep track of the following pieces of data:

* The player's **level** -- The player should start at level 1
* The player's **health** -- The player should start with 10 health points
* Number of **gold coins** in the player's possession -- The player should start with 0 coins

Some starter code is already in the file named `exercise1.py`. Your job is to fill in all of the instance methods of `Player` and make the game actually work.

Take a look now at `exercise1.py` and familiarize yourself with the layout of the starter code. Notice the placeholder `???`s -- you need to replace them with real code! 

Your job: 

1. Implement the `__init__` method
   * What parameter(s) do you need? Replace `???` with the required parameter(s)
   * What instance variables do you need to work with?
   * Recall that at the beginning of the game, the player should start at a level of 1, health of 10, and 0 gold coins
1. Implement the `__str__` method
   * What parameter(s) do you need? Replace `???` with the required parameter(s)
   * *Analyze the example output* to figure out how you need to format the string representation of the player.
1. Implement the `level_up` method
   * What parameter(s) do you need? Replace `???` with the required parameter(s)
   * What should this method do? What instance variable(s) does it need to modify?
1. Implement the `collect_treasure` method
   * What parameter(s) do you need? Replace `???` with the required parameter(s)
   * What should this method do? What instance variable(s) does it need to modify?
   * Recall that every time the player collects 10 coins, the player should level up!
   * **Hint:** The player should not lose any of the collected coins when they level up! It's theirs to keep... unless they die!
1. Implement the `restart` method
   * What parameter(s) do you need? Replace `???` with the required parameter(s)
   * What does it mean to "restart" the game anyway?
   * What instance variable(s) does this method need to modify?
   * **STRETCH:** Finally, after you finish this method -- do you see any repetition of code? Is there a way to write this method without repeating yourself?
1. Implement the `do_battle` method
   * What parameter(s) do you need? Replace `???` with the required parameter(s)
   * What should this method do? What instance variable(s) does it need to modify?
   * Recall that if the player loses all of their health points, the game should restart! This function should take care of the game restart, by calling the `restart` method.
1. Finally, look in the `main` function and fill in the one and only `???` with the correct code, to instantiate a new player.

**Note**: **Do not** add any new functions or methods, and **do not** modify the rest of the `main()` function. Just fill out the `???`s.

### Expected Output

Assuming that you have implemented everything correctly, this is the expected output when you run `exercise1.py`:

```
You are at level 1, have 0 gold, and 10 health points
You are at level 1, have 9 gold, and 10 health points
You are at level 2, have 10 gold, and 10 health points
You are at level 3, have 20 gold, and 10 health points
You are at level 3, have 20 gold, and 1 health points
You are at level 1, have 0 gold, and 10 health points
```

---

# Exercise 2: Solar System

Next, let's explore our Solar System!

For this exercise, some starter code is already in the file named `exercise2.py`. Take a look at it now and familiarize yourself with the layout of the starter code.

Your job is to use your knowledge of **inheritance** and **instance methods** to fill in all of the `???` areas of the code and make the program actually run.

**Note**: Do **not** add any new functions or methods! Just fill out the `???`s.

Let's start with the basics:

* A **Celestial Body** is a naturally occurring physical entity like a Star, Planet, or a Moon
* A [Planetary System](https://en.wikipedia.org/wiki/Planetary_system), like our own [Solar System](https://en.wikipedia.org/wiki/Solar_System), can contain several of these celestial bodies

We can model the different types of celestial bodies as follows:

1. Each `Body`, no matter which kind (star, planet, or moon) has to keep track of two pieces of information -- Its `name` and `mass`
   * The `name` of a `Body` should be a string
   * The `mass` of a `Body` should be an integer
   * **Hint:** Use **instance variables** to keep track of these!
   * Your job is to implement the `__init__` method of the `Body` class
1. Each `Star` (which is a kind of `Body`), has an additional piece of information to keep track of: Its `type`
   * The `type` of a `Star` should be a string
   * **Hint:** Stars also have `name`s and a `mass`! But you need to use inheritance to keep track of a Star's name and mass. Remember that a `Star` is a `Body`!
   * Your job is to:
      * Use Inheritance to deal with the `name` and `mass` of Stars,
      * Implement the rest of the `__init__` method of the `Star` class
1. Next, each `Planet` is also a kind of `Body`
   * Planets, in addition to having a `name` and `mass`, also has a `day_length` and a `year_length`
   * The `day_length` should be a integer and it represents the number of hours in a day (For example: `24` for the Earth)
   * The `year_length` should also be an integer and it represents the number of days in a year (For example: `365` for the Earth)
   * Your job is to:
      * Use Inheritance again to deal with the `name` and `mass` of Planets,
      * Implement the rest of the `__init__` method of the `Planet` class
1. Finally, each `Moon` is also a kind of `Body`
   * Moons, in addition to having a `name` and `mass`, also has a `month_length` and a `orbit_planet`
   * The `month_length` should be a integer and it represents the number of days in a month (For example: `30` for the Earth's moon - Luna)
   * The `orbit_planet` should be an *instance of the planet* that the moon orbits around!
      * For example, Luna orbits the Earth
      * **Hint:** This means the Earth must exist before its moon can be created!
   * Your job is to:
      * Use Inheritance again to deal with the `name` and `mass` of Moons,
      * Implement the rest of the `__init__` method of the `Moon` class

Next, we can model our Solar System with a top-level class, let's call it `System`, which can contain as many celestial bodies as needed. Most of this class has already been written for you except for a few `???`s you need to fill out.

* A `System` starts with no bodies inside of it
* Fill out the parameter list of the `__init__` method of the `System` class
* A `System` has the ability to `add` bodies to itself
   * Fill out the `???`s in the `add` method of `System`, to accept some new `body`
   * As you can see, the new `body` is added to the System's already existing collection of bodies via `append`.
* Finally, a `System` can report on the `total_mass` of all the celestial bodies inside the system.
   * The return value of the `total_mass` method is the sum of all the masses of the bodies inside the system
   * The only thing you need to do in the `total_mass` method is to fill out the parameter list
* **Note**: A `System` is **not** a `Body`! Instead, it *contains* bodies.

Finally, implement the missing parts of the `main` function:
   * Instantiate a `sun`, an `earth`, and a `luna`
      * For the `sun`, Use the name `'Sun'`, mass of `200`, and `type` of `'G-Type'`
      * For the `earth`, Use the name `'Earth'`, mass of `150`, `day_length` of `24`, and `year_length` of `365`
      * For `luna`, Use the name `'Luna'`, mass of `100`, `month_length` of `30`, and an `orbit_planet` of ... what do you think?
   * Instantiate a `solar_system`
      * Add the three bodies you've already instantiated to the solar system

**Note**: **Do not** add any new functions or methods, and **do not** modify the rest of the `main()` function. Just fill out the `???`s.

### Expected Output

Assuming that you have implemented everything correctly, this is the expected output when you run `exercise2.py`:

```
Earth
Sun
Luna
450
```

---

# To Go Where No One Has Gone Before

Isn't it fun to explore unknown new stuff, like Object Oriented Programming?

![](https://media.giphy.com/media/26zyYdiV4pdZZUWEU/source.gif)
