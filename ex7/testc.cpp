#include "testc.h" 

meclass::meclass() {
  thing1 = 1;
  thing2 = 4;
  thing3 = 9.0;
}

extern "C" void* funka() {
  meclass* plop = new meclass;
  return (void*)plop;
}

extern "C" int funkb(void* plep) {
  meclass* plup = reinterpret_cast<meclass*>(plep);
  return 1;
}
