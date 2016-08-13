Vector = {}
Vector.__index = Vector
Vector.__class = "Vector"

function Vector:new (x, y)
   obj = {x = x, y = y}
   local self = setmetatable(obj, Vector)

   return self
end

function Vector:__add(otherVec)
    if type(otherVec) ~= "table" then
        print("Type " .. type(otherVec) .. " not valid in vector operation.")
        return self
    end
    
    if getmetatable(otherVec) ~= Vector then
        return self
    end
    
    return Vector:new(self.x + otherVec.x, self.y + otherVec.y)
end

function Vector:__sub(otherVec)

    if type(otherVec) ~= "table" then
        print("Type " .. type(otherVec) .. " not valid in vector operation.")
        return self
    end
    
    if getmetatable(otherVec) ~= Vector then
        return self
    end

    return Vector:new(self.x - otherVec.x, self.y - otherVec.y)
end

-------------------------------------
--Implementation
----------------
print("Creating vectors...")
v = Vector:new(5,2)
print(v.x .. " " .. v.y)
u = Vector:new(0, 0)
print(v.x .. " " .. v.y)
print(u.x .. " " .. u.y)

if(v == u) then
    print("They are the same reference table") --Should not occur
end

print("Set vectors equal...")
u = v
print(v.x .. " " .. v.y)
print(u.x .. " " .. u.y)

if(v == u) then
    print("They are the same reference table")
end

print("Add vectors...")
w = u + v
print(w.x .. " " .. w.y)

print("Subtract vectors...")
w = w - u
w = w - u
w = w - u
print(w.x .. " " .. w.y)

print("Wrong type...")
w = u - 5
print(w.x .. " " .. w.y)