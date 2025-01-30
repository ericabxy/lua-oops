--- a short description
-- @classmod dog
local animal = require('animal')

local dog = {}

-- class table
local Dog = animal.new{}

function dog.new(o)
  local self = o or {}
  setmetatable(self, { __index = Dog })
  return self
end

return dog
