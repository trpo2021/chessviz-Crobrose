CFLAGS = -Wall -Wextra -Werror
CPPFLAGS = -I src -MP -MMD
CCFLAGS= -Wall -Wextra -Wconversion -Wredundant-decls -Wshadow -Wno-unused-parameter -O3
CC=clang
CXX=clang++
CXXFLAGS = -I thirdparty -I test -I src/ChessDv -I src/libChessDv

.PHONY:	all

all:	bin/ChessDv.exe 

bin/ChessDv.exe:  obj/src/ChessDv/ChessDv.o obj/src/libChessDv/libChessDvHelper.a
	g++ $(CFLAGS) -o $@ $^

obj/src/ChessDv/ChessDv.o: src/ChessDv/ChessDv.cpp
	g++ -c $(CFLAGS) $(CPPFLAGS) -o $@ $<

obj/src/libChessDv/libChessDvHelper.a: obj/src/ChessDv/ChessDvHelper.o
	ar rcs $@ $^

obj/src/ChessDv/ChessDvHelper.o: src/libChessDv/ChessDvHelper.cpp
	g++ -c $(CFLAGS) $(CPPFLAGS) -o $@ $<

Run:
	bin/ChessDv.exe

-include obj/src/ChessDv/ChessDv.d obj/src/ChessDv/ChessDvHelper.d

clean:
	rm -f obj/src/ChessDv/ChessDvHelper.o obj/src/libChessDv/libChessDvHelper.a obj/src/ChessDv/ChessDv.o obj/src/ChessDv/ChessDvHelper.d obj/src/ChessDv/ChessDv.d obj/src/Test/ChessDv-Test.o obj/src/Test/ctest_chess.o


.PHONY: test

test: ctest.h obj/src/Test/ctest_chess.o
	g++ -lm obj/src/ChessDv/ChessDv.o obj/src/libChessDv/libChessDvHelper.a obj/src/Test/ctest_chess.o -o test

obj/src/Test/ctest_chess.o: test/ctest_chess.cpp ctest.h
	g++ -c $(CFLAGS) $(CPPFLAGS) $(CXXFLAGS) -o $@ $<


RunTest:
	bin/ChessDv-Test.exe
