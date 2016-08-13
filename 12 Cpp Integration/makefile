ROOT = "/home/ubuntu/workspace/TestFiles/LuaTest/11 C Integration"

TARGET = hello
CC = g++
LUA_LIB = lua
MATH_LIB = m

install:
	$(CC) -o $(TARGET).exe $(TARGET).cpp -l$(LUA_LIB) -l$(MATH_LIB) -ldl
	
clean:
	rm $(TARGET).exe