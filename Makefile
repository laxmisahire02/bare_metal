exectable : assembler compiler loader
	arm-none-linux-gnueabi-objcopy -O binary p1.elf p1.bin

assembler :
	arm-none-linux-gnueabi-as -mcpu=arm926ej-s -g startup.s -o startup.o

compiler :
	arm-none-linux-gnueabi-gcc -c -mcpu=arm926ej-s -g p1.c -o p1.o

loader :
	arm-none-linux-gnueabi-ld -T p1.ld startup.o p1.o -o p1.elf