.data
.text
.globl main

main:
    addi	$16, $0, 10			    # $16 = $0 + 10
    addi	$17, $0, 20			    # $17 = $0 + 20
    add		$18, $16, $17		    # $18 = $16 + $17
    add		$18, $18, $18		    # $18 = $18 + $18
    add		$18, $18, $17		    # $18 = $18 + $17
    addi	$17, $17, -10			# $17 = $17 + -10
    sub		$17, $17, $16		    # $17 = $17 - $16
    j		main    				# jump to main
