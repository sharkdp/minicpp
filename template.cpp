#include <algorithm>
#include <array>
#include <cstdint>
#include <iostream>
#include <string>
#include <type_traits>
#include <vector>

#include <dbg.h>

using namespace std;

int main() {
  vector<int> x = {1, 2, 3};

  dbg(x);
}
