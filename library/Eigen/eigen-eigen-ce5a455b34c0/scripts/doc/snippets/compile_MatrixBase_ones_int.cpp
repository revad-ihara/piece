#include <Eigen/Eigen>
#include <iostream>

#ifndef M_PI
#define M_PI 3.1415926535897932384626433832795
#endif


using namespace Eigen;
using namespace std;

int main(int, char**)
{
  cout.precision(3);
  cout << 6 * RowVectorXi::Ones(4) << endl;
cout << VectorXf::Ones(2) << endl;

  return 0;
}
