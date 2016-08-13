Set = {}
Set.__index = Set
Set.__class = "Set"

function Set:new(t)
    
    list = {}
    for _, l in ipairs(t) do 
        list[l] = true
    end
    
    obj = { list = list }
    self = setmetatable(obj, Set)
    return self
end

function Set:tostring()

    local s = "{"
    local sep = ""
    for e in pairs(self.list) do
        s = s .. sep .. e
        sep = ", "
    end
    return s .. "}"
end

function Set:print()
    print(Set.tostring(self)) -- does not work with ":", the "self" you pass is of the function print, not the object you passed in
end

-- Union
function Set:Union(otherSet)
    local res = Set:new{}
    for i in pairs(self.list) do res.list[i] = true end
    for i in pairs(otherSet.list) do res.list[i] = true end
    return res 
end

function Set:__add(otherSet)
    return Set.Union(self, otherSet)
end

-- Intersection 
function Set:Intersection(otherSet)
    local res = Set:new{}
    for i in pairs(self.list) do
        res.list[i] = otherSet.list[i] --This works because if otherSet.list[k] does not exist, then it does not populate res.list[k]
    end
    return res
end

function Set:__mul(otherSet)
    return Set.Intersection(self, otherSet)
end

-- Cardinality
function Set:Cardinality()
    local cardinality = 0
    for i in pairs(self.list) do
        cardinality = cardinality + 1
    end
    return cardinality
end

--Lua only uses _eq, __le, and __lt. Their complement operators are derived through these definitions implicitly
function Set:__eq(otherSet)
    return Set.Cardinality(self) == Set.Cardinality(otherSet)
end

function Set:__le(otherSet)
    return (Set.Cardinality(self) < Set.Cardinality(otherSet)) or (self == otherSet)
end

function Set:__lt(otherSet)
    return Set.Cardinality(self) < Set.Cardinality(otherSet)
end