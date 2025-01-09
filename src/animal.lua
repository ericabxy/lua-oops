--- a short description
-- @classmod animal
local animal = {}

-- class table
local Animal = {}

-- return an initialized object of class Animal
function animal.init()
  local self = {}
  return animal.new(self)
end

-- return a new object of class Animal
-- @param[option] o table of initial values
function animal.new(o)
  local self = o or {}
  setmetatable(self, { __index = Animal })
  return self
end

-- return a class table for super methods
function animal.super()
  return Animal
end

return animal
