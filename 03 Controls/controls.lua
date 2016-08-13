local a = 5
local b = 5

if a == b then
    print("a == b")
else
    print("a ~= b")
end

a,b = nil, nil
print("a","b")
print(a, b)

--Tables are stored by reference, a memory location
a = {}; a.x = 1; a.y = 0
b = {}; b.x = 1; b.y = 0
c = a

--These aren't equal because they don't share the same memory location
if a == b then
    print("a == b")
else
    print("a ~= b")
end

--c = a means you set the memory location to the same place
if a == c then
    print("a == c")
else
    print("a ~= c")
end