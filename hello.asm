# hello.asm-- A "Hello World" program.
# Registers used:
# $v0 - syscall parameter and return value.
# $a0 - syscall parameter-- the string to print.
        .text                       # put thing into text segment
main:
        la      $a0, hello_msg      # load the addr of hello_msg into $a0
        li      $v0, 4              # 4 is the print_string syscall
        syscall                     # dio the syscall

        li      $v0, 10             # 10 exit syscall
        syscall                     #do the syscall

#Data for the program
        .data                       # put things in data segment
hello_msg:     .asciiz "Saluton al ciuxj\n"
#end of hello.asm
