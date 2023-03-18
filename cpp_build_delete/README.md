# build.sh

```
#!/bin/bash

g++ -g -O3 -std=c++11 -Wall -Wextra -pedantic -Wformat=2 -op -Weffc++ -Wold-style-cast -Woverloaded-virtual -Wredundant-decls -Wshadow -Wsign-conversion -Wsign-promo -Wstrict-overflow=5 -Wswitch-default -Wfloat-equal -Wmissing-format-attribute -Wunreachable-code -fmerge-all-constants main.cpp && ./p
```

# build2.sh

```
#!/bin/bash

g++ -std=c++11 -Wall -Wextra -ggdb -o main main.cpp
```

# objdump활용법

ARM Aseembly(M1 Pro MacBook test)

```
$ gcc -std=c++11 -Wall -Wextra -ggdb -c main.cpp

$ objdump --disassemble -S -C main.o

$ objdump --disassemble -S -C main.o | grep "main" -A 15 -B 15

main.o:	file format mach-o arm64

Disassembly of section __TEXT,__text:

0000000000000000 <ltmp0>:
; int main(void) {
       0: ff c3 00 d1  	sub	sp, sp, #48
       4: fd 7b 02 a9  	stp	x29, x30, [sp, #32]
       8: fd 83 00 91  	add	x29, sp, #32
       c: 08 00 80 52  	mov	w8, #0
      10: a8 43 1f b8  	stur	w8, [x29, #-12]
      14: bf c3 1f b8  	stur	wzr, [x29, #-4]
      18: a0 17 00 d1  	sub	x0, x29, #5
      1c: e0 07 00 f9  	str	x0, [sp, #8]
      20: 01 10 80 52  	mov	w1, #128
      24: e2 01 80 52  	mov	w2, #15
;   std::cout << obj.ADD(128, 15) << std::endl; // first method is called
      28: 00 00 00 94  	bl	0x28 <ltmp0+0x28>
      2c: e1 03 00 aa  	mov	x1, x0
      30: 00 00 00 90  	adrp	x0, 0x0 <ltmp0+0x30>
      34: 00 00 40 f9  	ldr	x0, [x0]
```

# Compilers

Use every available and reasonable set of warning options. Some warning options only work with optimizations enabled, or work better the higher the chosen level of optimization is, for example
`-Wnull-dereference`
with GCC.

You should use as many compilers as you can for your platform(s). Each compiler implements the standard slightly differently and supporting multiple will help ensure the most portable, most reliable code.

# GCC / Clang

`-Wall -Wextra -Wshadow -Wnon-virtual-dtor -pedantic`

- use these and consider the following (see descriptions below)

## see descriptions below

- `-pedantic` - Warn on language extensions

- `-Wall -Wextra` reasonable and standard

- `-Wshadow` warn the user if a variable declaration shadows one from a parent context

- `-Wnon-virtual-dtor` warn the user if a class with virtual functions has a non-virtual destructor. This helps catch hard to track down memory errors

- `-Wold-style-cast` warn for c-style casts

- `-Wcast-align` warn for potential performance problem casts
  -Wunused warn on anything being unused

- `-Woverloaded-virtual` warn if you overload (not override) a virtual function

- `-Wpedantic` (all versions of GCC, Clang >= 3.2) warn if non-standard C++ is used

- `-Wconversion` warn on type conversions that may lose data

- `-Wsign-conversion` (Clang all versions, GCC >= 4.3) warn on sign conversions

- `-Wmisleading-indentation` (only in GCC >= 6.0) warn if indentation implies blocks where blocks do not exist

- `-Wduplicated-cond` (only in GCC >= 6.0) warn if if / else chain has duplicated conditions

- `-Wduplicated-branches` (only in GCC >= 7.0) warn if if / else branches have duplicated code

- `-Wlogical-op` (only in GCC) warn about logical operations being used where bitwise were probably wanted

- `-Wnull-dereference` (only in GCC >= 6.0) warn if a null dereference is detected

- `-Wuseless-cast` (only in GCC >= 4.8) warn if you perform a cast to the same type

- `-Wdouble-promotion` (GCC >= 4.6, Clang >= 3.8) warn if float is implicitly promoted to double

- `-Wformat=2` warn on security issues around functions that format output (i.e., printf)

- `-Wlifetime` (only special branch of Clang currently) shows object lifetime issues

- `-Wimplicit-fallthrough` Warns when case statements fall-through. (Included with -Wextra in GCC, not in clang)

Consider using `-Weverything` and disabling the few warnings you need to on Clang

- `-Weffc++` warning mode can be too noisy, but if it works for your project, use it also.

https://github.com/cpp-best-practices/cppbestpractices/blob/master/02-Use_the_Tools_Available.md

# C++ compiling & linking

https://www3.ntu.edu.sg/home/ehchua/programming/cpp/gcc_make.html

https://stackoverflow.com/questions/6264249/how-does-the-compilation-linking-process-work

https://www.learncpp.com/cpp-tutorial/introduction-to-the-compiler-linker-and-libraries/

https://www.cprogramming.com/compilingandlinking.html
