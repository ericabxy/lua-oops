--- a short description
-- @classmod animal
local animal = {}

-- class table
local Animal = {}

function animal.new(o)
  local self = o or {}
  setmetatable(self, { __index = Animal })
  return self
end

return animal
