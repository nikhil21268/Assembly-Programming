all: test

test: myCode.o
	gcc -m64 -no-pie myCode.o -o test

myCode.o: myCode.asm
	yasm -f elf64 myCode.asm

clean: 
	rm myCode.o