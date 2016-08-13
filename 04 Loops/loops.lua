factorial = 5
res = 1
for i = factorial, 1, -1 do 
    res = res * i
end
print(res)

var = 0
found = false
while not found do
    var = var + 1
    
    if var == 5 then
      found = true
    end
end
print(var)

repeat
  line = os.read()
until line ~= ""
print(line)
    
days = {"Sunday", "Monday", "Tuesday", "Wednesday",
        "Thursday", "Friday", "Saturday"}
revDays = {}
print(revDays["Tuesday"])
for i,v in ipairs(days) do
  revDays[v] = i
end
print(revDays["Tuesday"])