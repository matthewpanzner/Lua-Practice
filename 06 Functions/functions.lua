--Basic Function
function f(a, b)
    print(a)
    print(b)
    print("------------")
end

f(3, "test")
f(12, 342)
a = {"TestArr"}
f(a, 3)

--You can return multiple values in lua
function g(x, y)
    newX = x * 2
    newY = y * 3
    return newX, newY
end

x, y = g(2,2)
print("x: " .. x .. " y: " .. y)
u = g(2,5)
print("u: " .. u)

--Variable number of arguments
function p (...)
  for i,v in pairs({...}) do
    print(i, v)
  end
end

p(1,53654,"test")
p("1 arg")
p("", "2 arg", "3 arg", "4arg", 30982)