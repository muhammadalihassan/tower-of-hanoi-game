.data
input: .asciiz "Enter number of disks: "
output: .asciiz "\nTotal moves are: "
.text   
la $a0,input      
li $v0,4
syscall    
la $v0,5
syscall
move $a3,$v0
li $a2,2
chain:
li $a1,2
mult $a1,$a2
mflo $a2
sub $a3,$a3,1
bgt $a3,1,chain
sub $a3,$a2,1
la $a0,output
li $v0,4
syscall
move $a0,$a3
li $v0,1
syscall    