AS = lcc -c
CC = lcc -Wa-l -Wl-m

BIN = main.gb
OBJS = main.o

all: $(BIN)

%.s: %.ms
	maccer -o $@ $<

main.gb: main.o mmlgb/driver/music.o
	$(CC) -o main.gb main.o mmlgb/driver/music.o

clean:
	rm -rf *.gb *.lst *.map *.o *~
