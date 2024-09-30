OUT = cello_example

ifeq ($(OS),Windows_NT)
    OUT_BIN := $(OUT).exe
else
    OUT_BIN := $(OUT)
endif

SRC = src/*.c

INCLUDE = -Icello/include
LIB = cello/lib/libCello.a

$(OUT_BIN): $(SRC)
	gcc $(SRC) $(INCLUDE) $(LIB) -o $(OUT_BIN)

run: $(OUT_BIN)
	./$(OUT_BIN)