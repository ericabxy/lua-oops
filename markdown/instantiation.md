# Instantiation

An object-oriented Lua module exports a function "new". This function returns an object which is an instance of the module's class.

    function myclass.new()
      local self = {}
      setmetatable(self, { __index = MyClass })
      return self
    end

Note: In style 2, the module is the class itself. Calling the module as a function returns a new instance. This style is reminiscent of more familiar object-oriented syntax and in this case modules are named in CamelCase.
