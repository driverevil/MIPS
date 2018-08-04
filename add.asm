# Ruthven losing my time
#add.asm - A program that computes the sum of 1 and 2, leaving the result
#           on register $t0.
#Registers used:
#t0 - used to hold the result
#t1 - used to hold the constant 1.
#v0 - syscall parameter

main:                        # SPIM starts execution at main.
        li    $t1, 1         # load 1 into $t1
        add   $t0, $t1, 2    # compute the sum of $t1 and 2, and put it
                             #  into $t0
        li    $v0, 10        #syscall code 10 is for exit
        syscall              #make the syscall
#end of add.asm
