# Inheritance

_Programming in Lua_ describes a [class declaration technique](https://www.lua.org/pil/16.1.html) centered around an instantiation function "new". The function serves three utilities; creating a new instance of a class, inheriting to a subclass, and a crude form of initialization.

LuaRocks standardizes this technique as a module declaration template [originally described by Hisham](https://hisham.hm/2014/01/02/how-to-write-lua-modules-in-a-post-module-world/). The standard uses a protected "class table" from which new objects are derived, but does not handle inheritance or initialization.

Following on from the LuaRocks style, the module can export another function "super" which handles certain inheritance features. It can both inherit the class to a new subclass, and provide the subclass with access to it parent methods in case they have been overridden.
