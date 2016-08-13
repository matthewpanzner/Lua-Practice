list = nil
for line in io.lines() do
  if line == "end" then
    break
  end
  list = {next=list, value=line}
end

print(list)

l = list
while l do
  print(l.value)
  l = l.next
end