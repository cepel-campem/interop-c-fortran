/**
* Exemplo de passagem de matriz estática do C++ para Fortran
*/
#include <iostream> 

using namespace std;

extern "C" void reciprocal(int nr, int nc, float* x, float* y);

int main() {
  const int nr = 2;
  const int nc = 5;
  float x[nr][nc];
  float y[nr][nc];
  int r;
  int c;
  int i = 1;
  for (r = 0;r < nr;r++)
    for (c = 0;c < nc;c++) {
      x[r][c] = (float)(i);
      i++;
    }
  cout << " C++ calling Fortran" << endl
    << " 2 d array as parameter" << endl;
  for (r = 0;r < nr;r++) {
    for (c = 0;c < nc;c++) {
      cout << " " << x[r][c] << " ";
    }
    cout << endl;
  }
  reciprocal(nr, nc, &x[0][0], &y[0][0]);
  for (r = 0; r < nr; r++) {
    for (c = 0; c < nc; c++) {
      cout << " 1 / " << x[r][c] << " = " << y[r][c] << endl;
    }
  }
  return(0);
}
