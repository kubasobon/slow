src = $(wildcard *.cpp)
obj = $(src:.cpp=.o)

main: $(obj)
	g++ $(src) -Wall -o slow

.PHONY:
clean:
	rm *.o slow

.PHONY:
install: main
	chmod +x ./slow
	cp ./slow ~/.local/bin/
