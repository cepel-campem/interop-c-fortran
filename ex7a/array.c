#include <stdio.h>
#include <stdlib.h>

void makearray(int** data, int n) {
  *data = (int*)malloc(n * sizeof(int));
  for (int i = 0; i < n; i++)
    (*data)[i] = i;
  return;
}

void freearray(int** data, int n) {
  free(*data);
  return;
}
