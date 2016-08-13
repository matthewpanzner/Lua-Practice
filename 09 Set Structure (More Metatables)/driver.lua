dofile("set.lua")


s = Set:new{120,30,20,1}
t = Set:new{120,50,10}

s:print()
t:print()

r = s:Union(t)
r:print()

r = s + t
r:print()

r = s:Intersection(t)
r:print()

r = s * t
r:print()

v = Set:new{120,50,10}
print("|s| = " .. s:Cardinality())
print("|t| = " .. t:Cardinality())
print("|v| = " .. v:Cardinality())
print("|r| = " .. r:Cardinality())

print("t = v:  " , t == v)
print("t ~= v: " , t ~= v)
print("s = v:  " , s == v)
print("s ~= v: " , s ~= v)
print("t > v : " , t > v)
print("t < v:  " , t < v)
print("r > s:  " , r > s)
print("r < s:  " , r < s )
print("t > v:  " , t >= v)
print("t <= v: " , t <= v)
print("r >= s: " , r >= s)
print("r <= s: " , r <=s )
print("r = s * t: " , r == s * t) -- These take normal priorities
print("r = s * s: " , r == s * s)
print("r = s + t: " , r == s + t)