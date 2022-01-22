
PROGRAMA=HELLO
PROGRAMA32=HELLO32

CC=gcc

SOURCE= crox.c

all32: clean compile32


all: clean compile

clean:
        rm -f *.o
        rm -f $(PROGRAMA)

compile32:
        $(CC) -m32  $(SOURCE) -o $(PROGRAMA32)

compile:
        $(CC) $(SOURCE) -o $(PROGRAMA)
