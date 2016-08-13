#include <string.h>
#include <iostream>
#include <lua.hpp>
   
extern "C" {
  #include <lua.h>
}

lua_State *L;

void error(lua_State* L, const char* msg, std::string e){
    std::cout << "An error occured... ";
    std::cout << msg << e << std::endl;    
}   

/* call a function `f' defined in Lua */
double f (double x, double y) {
  double z;
    
  /* push functions and arguments */
  lua_getglobal(L, "f");  /* function to be called */
  lua_pushnumber(L, x);   /* push 1st argument */
  lua_pushnumber(L, y);   /* push 2nd argument */
    
  /* do the call (2 arguments, 1 result) */
  if (lua_pcall(L, 2, 1, 0) != 0)
    error(L, "error running function `f': ", lua_tostring(L,-1));
    
  /* retrieve result */
  if (!lua_isnumber(L, -1))
    error(L, "function `f' must return a number", "");
  z = lua_tonumber(L, -1);
  lua_pop(L, 1);  /* pop returned value */
  return z;
}

int main(){
  L =  luaL_newstate();
  luaL_openlibs(L);
  int result = luaL_dofile(L, "function.lua"); //If you do loadfile, you will have to prime it with an empty pcall

  if ( result != LUA_OK ) {
    error(L, "Could not open file | ", lua_tostring(L,-1));
    lua_pop(L,1);
  }
  
  std::cout << f(1,10) << std::endl;
}