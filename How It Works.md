## Basics

Classes are supplied by modules. Module functions are called using dot syntax. Class methods are called using colon syntax (to pass the hidden "self" parameter). If the only argument to a function/method is a table constructor, parentheses can be replaced by curly braces in the function call.

## Instantiation

The module declaration exports a function "new" which returns an object table indexing values and methods from an internal _class table_. Use it by requiring the module and calling "new".

    local animal = require('animal')
    local dog = animal.new()

## Inheritance

Using the [class declaration technique](https://www.lua.org/pil/16.1.html) described in Programming in Lua, a submodule can declare its class table and pass it to a parent module's "new" function to inherit that module's class table as a superclass.

    ...
    local dog = animal.new{
      speech = "bark"
    }
    ...

## Initialization

The instantiation process allows for a crude sort of initialization by passing a table of initialized values to "new". E.g.:

    local dog = require('dog')
    local mydog = dog.new({name = "Fido"})

More complex initialization requires the use of a constructor function on the class table. Doing this requires additional lines in "new" to call the constructor and "unpack" any sequential values from the initial table. The instantiation call would look like e.g.:

    local dog = require('dog')
    local mydog = dog.new{"fido"}

## Parent Methods

Its sometimes necessary to access methods on the superclass from the derived class. To do this the subclass creates a temporary object from the superclass. The hidden "self" parameter must be passed explicitly as an argument. The supermethod then works on any objects derived from the subclass.

    ...
    function Circle:set_size(diameter)
      local radius = diameter / 2
      ellipse.new().set_size(self, radius, radius)
    end
    ...
