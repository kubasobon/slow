src = $(wildcard *.cpp)
obj = $(src:.cpp=.o)

main: $(obj)
	g++ $(src) -Wall -o main

.PHONY:
clean:
	rm *.o main
