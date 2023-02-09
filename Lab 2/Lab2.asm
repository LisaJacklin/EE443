###################
#Lab2.asm
#Lisa Jacklin
#EE 443 Lab 2
# 2/7/2023
###################

#### Designating the amount of space and location needed

	.data 0x10010400	#specifies the starting address
	array:      	.space 400
	ArrayPrompt: 	.asciiz "Please insert the array size. \n"
	Elements:   	.asciiz "Please insert an element. \n"	
	AverageArray: 	.asciiz "The Average value of the array is: \n"
	NewArray:  	.asciiz "This is the new array: \n"

####Start of 'Main' code
	
	jal Procedure1
	
	###Printing the New Array
	li $v0, 4		#call code for printing a string
	la $a0, NewArray	#prompts the user for input
	
	addi $t1, $0, $0	#$t1 will be the counter for elements being displayed
InvertedArray:	

	sw $v0, 0($t0)		#this will store the value given into the address for FilledArray
	syscall			#this should display the array values
	
	addi $t0, $t0, 4	#increment the address by 4 bits
		
	addi $t1, $t1, 1	#$t1 will be the counter to be compared
   	bne $t5, $t1, InvertedArray  #if the size of the array is not equal to the elements given, loop
   	
	####Exit Program
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
	add $t9, $t5, $0	#creates a copy of the array size in t9	
		
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
	
	#predeterminates
	li $t4, 0		#starting at zero for the sum
	la $s5,array 		#reload the base address of the array
	
	add $t9, $t9, -1	#have to subtract a single value from the array
	sll $s6,$t9, 2 		#this should mutliply the array size by 4 for an address
	
Total:
	la $s3, ($s6)		#value at specified address to be added to sum
	add $t4, $t4, $s3	#adding the sum to the value in memory
	
	add $s3, $s3, 4		#increment through the memory space
	add $t4, $t4, 1		#increment my counter value by 1
	bne $t0, $s6, Total 	#if array size is not equl to the counter value
	
	#average loop predeterminate
	add $t7, $t7, 0		#counter for average
Average:
	add $t7, $t7, 1
	sub $t8, $t4,$t3	#stored in t8, the sum minus the counter total
	
	bne $t8, $t4, Average	#if they are not equal, branch again
	
	## Display the average
	li $v0, 4		#calls to print a string
	la $a0, AverageArray	#prompts the user to input integers for array elements
	
	li $v0, 11		#call code to read an integer contains in $a0
	la $a0, ($t8)		#$a0 now has the contents of $t8
	syscall			#this should diplay the average value 
	
	#ja $ra			#this should return back to the main section of code
