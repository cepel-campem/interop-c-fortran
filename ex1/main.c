int main() {
  float a = 3;
  float b = 4;
  float c;
  /* Call the Fortran subroutine */
  my_sub(&a, &b, &c);
  printf("a = %f\n", a);
  printf("b = %f\n", b);
  printf("c = %f\n", c);
  return 0;
}


