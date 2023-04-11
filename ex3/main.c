#include <stdio.h>

main() {
  struct {
    double x1, x2, x3, x4;
  } p;
  
  double y[4];
  fSub(&p);
  printf("%e %e %e %e\n", p.x1, p.x2, p.x3, p.x4);
  fSub(y);
  printf("%e %e %e %e\n", y[0], y[1], y[2], y[3]);
}

