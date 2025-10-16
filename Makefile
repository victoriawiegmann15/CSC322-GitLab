CC = gcc
CFLAGS = -Wall -O6

SRCS = mystrings.c Person.c NameAge.c
OBJS = $(SRCS:.c=.o)

NameAge: $(OBJS)
	$(CC) $(CFLAGS) -o $@ $(OBJS)

all: NameAge

clean:
	rm -f $(OBJS) NameAge
