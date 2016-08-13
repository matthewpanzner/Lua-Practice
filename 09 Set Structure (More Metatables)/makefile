ROOT = "/home/ubuntu/workspace/TestFiles/LuaTest/08 Metatables"
TARGET = set
DRIVER = driver

install:
	luac -o $(TARGET).lc $(TARGET).lua
	luac -o $(DRIVER).lc $(DRIVER).lua
	
clean:
	rm $(TARGET).lc
	rm $(DRIVER).lc