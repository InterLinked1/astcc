#
# AstCC: Asterisk Coin Controller Interface
#
# Copyright (C) 2022, Naveen Albert
#
# Naveen Albert <asterisk@phreaknet.org>
#

CC		= gcc
CFLAGS = -Wall -Werror -Wno-unused-parameter -Wextra -Wstrict-prototypes -Wmissing-prototypes -Wdeclaration-after-statement -Wmissing-declarations -Wmissing-format-attribute -Wformat=2 -Wshadow -std=gnu99 -pthread -O0 -g -Wno-stack-protector -fno-omit-frame-pointer -D_FORTIFY_SOURCE=2
EXE		= astcc
LIBS	= -lm
RM		= rm -f

MAIN_OBJ := astcc.o

all : main

%.o: %.c
	$(CC) $(CFLAGS) -c $^

main : $(MAIN_OBJ)
	$(CC) $(CFLAGS) -o $(EXE) $(LIBS) *.o -ldl -lcami

clean :
	$(RM) *.i *.o $(EXE)

.PHONY: all
.PHONY: main
.PHONY: clean
