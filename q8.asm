
Zero: .byte 63
One: .byte 6
Two_1: .byte 27
Three_1: .byte 15
Four_1: .byte 38
Five_1: .byte 45
Six: .byte 61
Seven: .byte 7
char0: .byte 48
Nine_1: .byte 47
LOW: .byte 0
g: .byte 1


get_word:
	lb x18, 8(x0)

	lb x13, 1025(x0)
	lb x14, 1025(x0)
	lb x15, 1025(x0)
	lb x16, 1025(x0)
	
	bne x13, x18, display_Eight
	


display_Zero:
	lb x9, 0(x0)
	lb x10, 10(x0)
	sb x9, 1029(x0)
	sb x10, 1027(x0)
halt

display_One:
	lb x9, 1(x0)
	lb x10, 10(x0)
	sb x9, 1029(x0)
	sb x10, 1027(x0)
halt

display_Two:
	lb x9, 2(x0)
	lb x10, 11(x0)
	sb x9, 1029(x0)
	sb x10, 1027(x0)
halt

display_Three:
	lb x9, 3(x0)
	lb x10, 11(x0)
	sb x9, 1029(x0)
	sb x10, 1027(x0)
halt

display_Four:
	lb x9, 4(x0)
	lb x10, 11(x0)
	sb x9, 1029(x0)
	sb x10, 1027(x0)
halt

display_Five:
	lb x9, 5(x0)
	lb x10, 11(x0)
	sb x9, 1029(x0)
	sb x10, 1027(x0)
halt

display_Six:
	lb x9, 6(x0)
	lb x10, 11(x0)
	sb x9, 1029(x0)
	sb x10, 1027(x0)
halt

display_Seven:
	lb x9, 7(x0)
	lb x10, 10(x0)
	sb x9, 1029(x0)
	sb x10, 1027(x0)
halt

display_Eight:
	lb x9, 0(x0)
	lb x10, 11(x0)
	sb x9, 1029(x0)
	sb x10, 1027(x0)
halt

display_Nine:
	lb x9, 9(x0)
	lb x10, 11(x0)
	sb x9, 1029(x0)
	sb x10, 1027(x0)
	halt

clear_Display:
	lb x9, 10(x0)
	lb x10, 10(x0)
	sb x9, 1029(x0)
	sb x10, 1027(x0)


