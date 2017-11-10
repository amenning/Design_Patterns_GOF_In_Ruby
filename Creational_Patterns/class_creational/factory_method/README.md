# Class Creational: Factory Method

* Intent - Define an interface for creating an object, but let subclasses decide which class to instantiate.  Factory Method lets a class defer instantiation to subclasses.

* Uses
  * When a class can't anticipate the class of objects it must create
  * When a class wants its subclasses to specify the objects it creates
  * When classes delegate responsibility to one of several helper subclasses, and you want to localize the knowledge of which helper subclass is the delegate

* Run the following ruby code to see the example pattern
* ruby maze_game.rb
