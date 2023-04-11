#include <iostream> 

using namespace std;

struct Teste {
  double x1, x2, x3, x4;
};

extern "C" void fSub(Teste*);

int main(int argc, char* argv[]) {
  Teste p;
  double y[4];
  fSub(&p);
  cout << p.x1 << " " << p.x2 << " " << p.x3 << " " << p.x4 << endl;
  return 0;
}

