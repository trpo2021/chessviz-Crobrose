CFLAGS = -Wall -Wextra -Werror
CPPFLAGS = -I src -MP -MMD

src\ChessDv\ChessDv:  obj\src\ChessDv\ChessDvHelper.o obj\src\ChessDv\ChessDv.o obj\src\ChessDv\Start.o
	g++ $(CFLAGS) -o $@ $^

obj\src\ChessDv\ChessDv.o: src\ChessDv\ChessDv.cpp
	g++ -c $(CFLAGS) $(CPPFLAGS) -o $@ $<

obj\src\ChessDv\ChessDvHelper.o: src\libChessDv\ChessDvHelper.cpp
	g++ -c $(CFLAGS) $(CPPFLAGS) -o $@ $<

obj\src\ChessDv\Start.o:
	src\ChessDv\ChessDv.exe

-include obj\src\ChessDv\ChessDv.d obj\src\ChessDv\ChessDvHelper.d


