# Source

https://stackoverflow.com/questions/26000580/how-to-properly-test-classes

```
g++ -g -O3 -std=c++11 -Wall -Wextra -pedantic -Wformat=2 -Weffc++ -Wold-style-cast -Woverloaded-virtual -Wredundant-decls -Wshadow -Wsign-conversion -Wsign-promo -Wstrict-overflow=5 -Wswitch-default -Wfloat-equal -Wmissing-format-attribute -Wunreachable-code -fmerge-all-constants main.cpp Greeting.cpp Greeting.h Test.cpp Test.h && ./a.out -t
```

or

# build 2

```
$ g++ -c Greeting.cpp Greeting.h Test.cpp Test.h main.cpp
clang: warning: treating 'c-header' input as 'c++-header' when in C++ mode, this behavior is deprecated [-Wdeprecated]
clang: warning: treating 'c-header' input as 'c++-header' when in C++ mode, this behavior is deprecated [-Wdeprecated]
Test.cpp:8:3: warning: 'auto' type specifier is a C++11 extension [-Wc++11-extensions]
  auto greeting = getGreeting();
  ^
1 warning generated.

$ ls
Greeting.cpp   Greeting.h.gch README.md      Test.h         Test.o         main.o
Greeting.h     Greeting.o     Test.cpp       Test.h.gch     main.cpp

$ g++ Greeting.h.gch Test.o main.o Greeting.o Test.h.gch

$ ls
Greeting.cpp   Greeting.h.gch README.md      Test.h         Test.o         main.cpp
Greeting.h     Greeting.o     Test.cpp       Test.h.gch     a.out          main.o

$ ./a.out -t
Test passes!


$ ls
Greeting.cpp   Greeting.h.gch README.md      Test.h         Test.o         main.cpp
Greeting.h     Greeting.o     Test.cpp       Test.h.gch     a.out          main.o

$ rm -rf Greeting.h.gch Test.o Greeting.o Test.h.gch main.o a.out

```
