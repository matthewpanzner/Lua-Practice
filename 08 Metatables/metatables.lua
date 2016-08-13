ItemType = {}
ItemType.__index = ItemType
function ItemType.new(id)
  local self = setmetatable({}, ItemType)
  self.id = id
  return self
end

function ItemType.setId(self, id)
  self.id = id
end

function ItemType.getId(self)
  return self.id
end

local i = ItemType.new(5)
local i2 = ItemType.new(129)
print(i:getId())  -- : colon is a shortcut syntax that implictly sends the "self" arg to the method being called
print(i.getId(i))
--print(i.getId()) This is an error, because it needs an argument

i.setId(i, 10) -- as expected
print(i:getId())
print(i2:getId())

i.setId(i2,15) --creeeepy, changes i2 instead of i.  Be careful with dot.
print(i:getId())
print(i2:getId())
