
PROGRAMA=HELLO
PROGRAMA32=HELLO32
PROGRAMAARM=HELLOARM


CC=gcc
CCARM=arm-linux-gnueabi-gcc
CCANDROID=~/arm32/bin/clang

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

compileARM:
	$(CCARM) $(SOURCE) -o $(PROGRAMAARM)

compileANDROID:
	$(CCANDROID) -pie $(SOURCE) 
