#include "minicpp/prelude"

int main() {
  vector<int> x = {1, 2, 3};

  dbg(x);
}

// COMPILE OPTIONS
//
//# --std=c++17
//# -g
//# -O2
//# -Wall
//# -Wextra
//# -pedantic
//# -fsanitize=address
//# -fsanitize=signed-integer-overflow
