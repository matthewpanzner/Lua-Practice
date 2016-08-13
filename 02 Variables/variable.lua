--[[
  Quick reference to using variables in Lua
]]--

--Create local variable and concatenating 
local var = 5
print("var is: " .. var)
print("type: " .. type(var))

--Variables can change type
var = "changed"
print("var is now: " .. var)
print("type is now: " .. type(var))

--Delete var
var = nil

--Variables have a default value of 'nil'
local c
--print("c: " .. c) -- gives error from trying to concatenate nil
print(c) -- prints nil

--Delete
c = nil

--Can create on same line
local a = 5 ; local b = 6
print("a: " .. a, "b: " .. b)

--Swap
a , b = b , a
print("a after swap: " .. a, "b after swap: " .. b)

--Delete
a, b = nil


--All should be nil
print("----------")
print("var", "a", "b", "c")
print(var, a, b, c)