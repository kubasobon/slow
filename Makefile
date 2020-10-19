src = $(wildcard *.cpp)
obj = $(src:.cpp=.o)

main: $(obj)
	g++ $(src) -Wall -o slow

.PHONY:
clean:
	rm *.o slow
