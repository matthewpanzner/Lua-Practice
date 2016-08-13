Account = {balance = 0}
    
function Account:new (o)
  o = o or {}
  setmetatable(o, self)
  self.__index = self
  return o
end
    
function Account:deposit (v)
  self.balance = self.balance + v
end
    
function Account:withdraw (v)
  if v > self.balance then print("insufficient funds") 
  else self.balance = self.balance - v end
end

function Account:getBalance() return self.balance end

--Inheritance
SpecialAccount = Account:new{limit = 0}
 
function SpecialAccount:withdraw (v)
  if v - self.balance >= self:getLimit() then
    print("insufficient funds")
  else
    self.balance = self.balance - v
  end
end
    
function SpecialAccount:getLimit ()
  return self.limit
end

a = Account:new()
a:deposit(15)
a:withdraw(10)
print(a:getBalance())

s = SpecialAccount:new()
s:deposit(100)
s:withdraw(30)
print(s:getBalance())
print(s:getLimit())

s2 = SpecialAccount:new{balance = 150, limit = 200}
print(s2:getBalance())
print(s2:getLimit())

s3 = SpecialAccount:new()
print(s2:getBalance())
print(s2:getLimit())
print(s3:getBalance())
print(s3:getLimit())
-- print(a:getLimit()) won't work since this mt does not have reference to getLimit