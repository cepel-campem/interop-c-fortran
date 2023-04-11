#include <iostream> 
#include <cstdlib> 
#include <Eigen/Dense> 
#include <complex> 

using namespace std;

typedef complex<double> dComplex;
typedef Eigen::MatrixXd dMatrix;
typedef Eigen::VectorXd dVector;

extern "C" void funcao1(int, double*);
extern "C" void funcao2(dComplex);
extern "C" void funcao3(int, dComplex*);

int main(int argc, char* argv[]) {
  cout << "Teste de acesso de funcoes Fortran" << endl;

  dVector v = dVector::LinSpaced(10, 1, 10);
  funcao1(v.size(), v.data());

  dComplex a(1., 2.);
  funcao2(a);

  return 0;
}
