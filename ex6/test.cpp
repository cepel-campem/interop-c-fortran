#include <iostream>
#include <cstdlib>

using namespace std;

struct Mat {
  double* dat1;
  double** dat2;
};

extern "C" void fMat(Mat*);

int main(int argc, char* argv[]) {
  Mat* m = new Mat();
  m->dat1 = new double[8];
  for (int i = 0; i < 8; i++) {
    m->dat1[i] = double(i * 2);
  }

  int rows = 5;
  int cols = 4;
  double* data = (double*)malloc(rows * cols * sizeof(double));
  m->dat2 = (double**)malloc(rows * sizeof(double*));
  for (int i = 0; i < rows; i++) {
    m->dat2[i] = &(data[cols * i]);
  }

  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; j++) {
      m->dat2[i][j] = double(i * cols + j);
    }
  }

  cout << "Vetor no C++:" << endl;
  for (int i = 0; i < 8; i++) {
    cout << m->dat1[i] << " ";
  }
  cout << endl;

  cout << "Matriz no C++:" << endl;
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; j++) {
      cout << m->dat2[i][j] << " ";
    }
    cout << endl;
  }
  fMat(m);
}
