--- @module testfile
local testfile = {}

-- class table
local Testfile = {}

function testfile.new(o)
  local self = o or {}
  setmetatable(self, { __index = Testfile })
  return self
end

return testfile
