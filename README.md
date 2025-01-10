# Object-oriented Lua Examples

This repository contains working examples of object-oriented programming techniques in Lua, closely following the LuaRocks [style guide](https://github.com/luarocks/lua-style-guide). Demonstrable examples will be provided in "src", but the main feature of this repository is a set of class module templates that can be installed using the Makefile.

We are using the [module declaration outline](https://hisham.hm/2014/01/02/how-to-write-lua-modules-in-a-post-module-world/) described by Hisham (in style 1 or style 2) as a base to build further object-oriented programming features.

## Instantiation

The module declaration exports a function "new" which returns an object table indexing values and methods from an internal _class table_.

## Inheritance

Using the [class declaration technique](https://www.lua.org/pil/16.1.html) described in Programming in Lua, a submodule can declare its class table and pass it to a parent module's "new" function to inherit that module's class table as a superclass. This has the added benefit of allowing a sort of crude initialization as well, but it makes other OOP features difficult to implement, as will be discussed below.

## Initialization

Object-oriented languages customarily provide a constructor to perform any setup to initialize a new object's member values. This ability can be sorely missed in Lua. You can provide a simple table as a sort of instantiation when declaring a new object, but beyond some simple initial values further work is needed to properly set up complex objects. Its ideal if the class module itself can take care of initialization instead, and there are several possible ways to implement this.

Instead of being able to pass it an object, the class module's "new" function can take arguments and pass them to a constructor. Doing both creates an awkward syntax where every call to "new" would have to contain a blank table before the other arguments e.g. 'myclass.new({}, a, b, c)', so inneritance would have to be provided another way.

In keeping with the technique of supplying an initialized table to "new", the class module could define an "init" functiom that returns a table or object with initialized values. This seems very Lua-like, but makes instantiation a bit awkward compared to other OO languages; you'd have to declare the initial object with "init" and pass it to "new", or call "init" after every time you call "new". Alternatively, "init" can return the initialized and injerited object all at once, but that's an unfamiliar syntax and we might as well call the function "new" at that point. Examples follow.

    local abc = myclass.init(a, b, c)
    abc = myclass.new(abc)

    local abc = myclass.new(myclass.init(a, b, c))

    local abc = myclass.init(a, b, c)

