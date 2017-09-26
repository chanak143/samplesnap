
CC = gcc
prgname = sample-snap
INC = -Isrc/
csrc = $(wildcard src/*.c)
obj = $(csrc:.c=.o)

$(prgname): $(obj)
	$(CC) $(INC) -o bin/$@ $^

.PHONY: clean
clean:
	rm -rf $(obj)
