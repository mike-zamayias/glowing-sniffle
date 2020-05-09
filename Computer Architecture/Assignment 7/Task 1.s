.data
    num_a: .asciiz "Input number A: "
    num_b: .asciiz "Input number B: "
    num_c: .asciiz "Input number C: "
    largest_0: .asciiz "First largest number: "
    largest_1: .asciiz "Second largest number: "
    minimum: .asciiz "Minimum number: "
    str_nl: .asciiz "\n"
.text
.globl main
main:
    #   initialize vars $s0, $s1, $s2
    addi	$s0, $s0, 3			# $s0 = $s0 + 3
    addi	$s1, $s1, 4			# $s1 = $s1 + 4
    addi	$s2, $s2, 5			# $s2 = $s2 + 5
    #   begin comparisons
    bgt		$s0, $s1, ab	    # if $s0 > $s1 then ab
    ble		$s0, $s1, n_ab   	# if $s0 <= $s1 then n_ab
    bgt		$s2, $s5, ct	    # if $s2 > $s5 then ct
    ble		$s2, $s5, n_ct   	# if $s2 <= $s5 then n_ct
return:
    bge		$s4, $s3, slfl  	# if $s4 >= $s3 then slfl
    blt		$s4, $s3, n_slfl	# if $s4 < $s3 then n_slfl
    #   continue program
n_slfl:
    # print prompt for first largest number
    addi	$2, $0, 4			# $2 = $0 + 4
    la		$4, largest_0
    syscall
    # print first largest number
    addi	$2, $0, 1			# $2 = $0 + 1
    add		$4, $0, $s3	    	# $4 = $0 + $s3
    syscall
    # print new line
    addi	$2, $0, 4			# $2 = $0 + 4
    la      $4, str_nl
    syscall
    # print prompt for second largest number
    addi	$2, $0, 4			# $2 = $0 + 4
    la		$4, largest_1
    syscall
    # print second largest number
    addi	$2, $0, 1			# $2 = $0 + 1
    add		$4, $0, $s4		    # $4 = $0 + $s4
    syscall
    # print new line
    addi	$2, $0, 4			# $2 = $0 + 4
    la      $4, str_nl
    syscall
    # print prompt for minimum number
    addi	$2, $0, 4			# $2 = $0 + 4
    la		$4, minimum
    syscall
    # print minimum number
    addi	$2, $0, 1			# $2 = $0 + 1
    add		$4, $0, $s6		    # $4 = $0 + $s6
    syscall
    # print new line
    addi	$2, $0, 4			# $2 = $0 + 4
    la      $4, str_nl
    syscall
    #   terminate program
    li		$v0, 10	        	# $v0 = 10
    syscall
ab:
    add		$s3, $s0, $0		# $s3 = $s0 + $0    - first_largest = A
    add		$s5, $s1, $0		# $s5 = $s1 + $0    - temp = B
    j		return				# jump to return
n_ab:
    add		$s3, $s1, $0		# $s3 = $s1 + $0    - first_largest = B
    add		$s5, $s0, $0		# $s5 = $s0 + $0    - temp = A
    j		return				# jump to return
ct:
    add		$s4, $s2, $0		# $s4 = $s2 + $0    - second_largest = C
    add		$s6, $s5, $0		# $s6 = $s5 + $0    - smaller = temp
    j		return				# jump to return
n_ct:
    add		$s4, $s5, $0		# $s4 = $s5 + $0    - second_largest = temp
    add		$s6, $s2, $0		# $s6 = $s2 + $0    - smaller = C
    j		return				# jump to return
slfl:
    add		$s5, $0, $s4		# $s5 = $0 + $s4    - temp = second_largest
    add		$s4, $0, $s3		# $s4 = $0 + $s3    - second_largest = first_largest
    add		$s3, $0, $s5		# $s3 = $0 + $s5    - first_largest = temp
    j		n_slfl				# jump to n_slfl
