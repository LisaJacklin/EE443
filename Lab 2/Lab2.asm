###################
#Lab2.asm
#Lisa Jacklin
#EE 443 Lab 2
# 2/7/2023
###################

#### Designating the amount of space and location needed

	.data 0x10010400	#specifies the starting address
	array:      .space 400
	ArrayPrompt: .asciiz "Please insert the array size. \n"
	Elements:    .asciiz "Please insert an element. \n"	
	#NewArray: .asciiz "This is the new array: \n"

####Start of 'Main' code
	
	jal Procedure1
	
	li   $v0, 10          # system call for exit
    	syscall               # we are out of here.
	
#### Procedure 1	
	.text
Procedure1:
	li $v0, 4		#call code for printing a string
	la $a0, ArrayPrompt	#prompts the user for input
	syscall			# displays the prompt to the user for input
	
	li $v0, 5		# call code to read the integer result in $v0 given by the user
	syscall			#prints the value of user input
	la $t5, ($v0)		# loads the input value to $t5, which will be considered the Array size
	# the same as add $t5, $v0, %zero
		
	add $t1,$0, $0		#this should set $t1 to be zero to begin with; counter
	#loading to the array should happen once before the loop!
	la $t0, array		# loads the address of FilledArray to $t0
NeedMore:
	#this should be some form of loop to allow it to take values for array number of elements
	
	li $v0, 4		#calls to print a string
	la $a0, Elements	#prompts the user to input integers for array elements
	syscall			#displays the elements prompt to the user
	
	li $v0, 5		# call code to read the result from the user
	syscall			#returns the value of the user input
	
	sw $v0, 0($t0)		#this will store the value given into the address for FilledArray
	addi $t0, $t0, 4	#increment the address by 4 bits
		
	addi $t1, $t1, 1	#$t1 will be the counter to be compared
   	bne $t5, $t1, NeedMore  #if the size of the array is not equal to the elements given, loop

	jal Procedure2		#this will take us to procedure 2 code
	
#### Procedure 2	
	.text
Procedure2:
	###In-place inversion of the array
	
	la $t5, array		#load the base address of the array
	addi $t0, $t0, -4	#deincrements to the last value in memory
Invert:
	#note that t0 is the last value of the array based on increments in NeedMore:
	lw $s1, ($t5)		#s1 represents the very first value in the array
	lw $s2, ($t0)		#load the last value of the array to s2 
	
	sw $s1, ($t0)		#these two should switch the values locations
	sw $s2, ($t5)
	
	addi $t0, $t0, -4	#deincrements the last location in memory
	addi $t5, $t5, 4	#increments the base address in memory
	
	bne $t0,$t5,Invert 	#should go through the loop to invert the array
	
	
	###Integer average of all elements in the array
	add $t3, $t3, $0	#counter for the total
	add $t4, $t4, 0		#starting at zero for the sum
	
Total:
	add $t3, $t3, 1		#increment the counter
	
	lw $s3, ($t0)		#value at specified address to be added to sum
	add $t4, $t4, $s3	#adding the sum to the value in memory
	
	add $t0, $t0, 4		#increment through the memory space
	bne $t5, $t3, Total 	#if array size is not equl to the counter value
	
	add $t7, $t7, 0		#counter for average
Average:
	add $t7, $t7, 1
	sub $t8, $t4,$t3	#stored in t8, the sum minus the counter total
	
	#NEED A BRANCH HERE OR SOMETHING TO COMPARE THE VALUE OF THE MINUS TO THE AVERAGE VALUE
	
	## Display the average
	
	#syscall		#this should diplay the average value 
	#ja $ra			#this should return back to the main section of code
