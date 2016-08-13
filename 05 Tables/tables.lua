animals = {"Moose", "Cow", "Cat", "Chicken"}

--Get each value of each index in animals
for i, v in ipairs(animals) do
    print(animals[i])
end

objInst = {posX = 0, posY = 5}
print("X: " .. objInst.posX .. " Y: " .. objInst.posY)

-- These are equivalent statements
obj1 = {x=0, y=0}
obj2 = {["x"]=0, ["y"]=0}

if obj1 ~= obj2 then
    print("These are tables, so memory locations; they should not be equal")
end

print("obj1.x " .. obj1.x .. " obj1.y " .. obj1.y)
print("obj2.x " .. obj2.x .. " obj2.y " .. obj2.y)