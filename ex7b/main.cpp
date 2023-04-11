extern "C" void* new_problem(int);
extern "C" void add(void*);
extern "C" void goodbye(void*);

int main() {
  void* prob;
  int problem_size = 10;
  prob = new_problem(problem_size);
  add(prob);
  // ...
  goodbye(prob);
}
