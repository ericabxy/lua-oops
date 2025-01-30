# Object-oriented Lua Examples

This repository contains working examples of object-oriented programming techniques in Lua following the LuaRocks [style guide](https://github.com/luarocks/lua-style-guide). Demonstrable examples will be provided in "src", but the main feature of this repository is a set of class module templates that can be installed using the Makefile.

The templates use the [module declaration outline](https://hisham.hm/2014/01/02/how-to-write-lua-modules-in-a-post-module-world/) described by Hisham (in style 1) as a base to build further object-oriented programming features.

## Installing

The Makefile places templates in "&tilde;/Templates" and the formatter in "&tilde;/.local/share/nautilus/scripts". A Lua interpreter is required for the formatter to run.

## Creating a Class

Make a new document from "new&lowbar;class.template". Name the template and run "Format Lua Template" on it. This creates a new ".lua" file with names derived from the template filename. The formatter can batch any number of templates in one command.

## Creating a Subclass

Make a new document from "new&lowbar;subclass.template" and name the template. Run "Format Lua Template" on this file _and_ the ".lua" file of the module it will inherit from. This creates a new ".lua" file as above but with a class table that inherits the superclass table. The formatter can batch any number of subclass templates from one superclass.

## Deriving Objects

Import the class module and call "new" on it.

    local animal = require('src.animal')
    local mydog = animal.new()

See [How It works](How It Works.md) for details and how to implement more OOP features.
