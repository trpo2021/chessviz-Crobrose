CFLAGS = -Wall -Wextra -Werror
CPPFLAGS = -I src -MP -MMD

.PHONY:	all

all:	bin/ChessDv.exe Run clean

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
	del obj\src\ChessDv\ChessDvHelper.o 
	del obj\src\ChessDv\ChessDvHelper.d 
	del obj\src\ChessDv\ChessDv.o 
	del obj\src\ChessDv\ChessDv.d
	del obj\src\libChessDv\libChessDvHelper.a


