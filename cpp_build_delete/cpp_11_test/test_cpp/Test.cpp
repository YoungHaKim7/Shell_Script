#include "Test.h"
#include "Greeting.h"

#include <cassert>
#include <iostream>

void test() {
  auto greeting = getGreeting();
  assert(greeting == "Hello world!");
  std::cout << "Test passes!\n";
}