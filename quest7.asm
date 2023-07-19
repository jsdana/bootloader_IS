#Vermelho esquerdo => 3
#Amarelo esquerdo => 5
#Verde esquerdo => 6

#Vermelho direito => 9
#Amarelo direito => 10
#Verde direito => 11 

start:
	addi x14, x0, 16
	addi x15, x0, 21
	addi x16, x0, 26
	addi x17, x0, 31
	addi x18, x0, 36
	addi x19, x0, 35

	lb x10, 0(x0)
	sb x10, 1030(x0)
	lh x10, 1031(x0)
	sh x10, 1024(x0)

	blt x10, x14, acende_Lgreen
	halt 
		
acende_Lred:
	addi x12, x0, 3
	addi x13, x0, 255
	sb x12, 1033(x0)
	sb x13, 1034(x0)
	halt

apaga_Lred:
	addi x12, x0, 3
	addi x13, x0, 0
	sb x12, 1033(x0)
	sb x13, 1034(x0)
	jalr x0, 0(x0)

acende_Lyellow:
	addi x12, x0, 5
	addi x13, x0, 255
	sb x12, 1033(x0)
	sb x13, 1034(x0)
	halt

apaga_Lyellow:
	addi x12, x0, 5
	addi x13, x0, 0
	sb x12, 1033(x0)
	sb x13, 1034(x0)
	halt

acende_Lgreen:
	addi x12, x0, 6
	addi x13, x0, 255
	sb x12, 1033(x0)
	sb x13, 1034(x0)
	halt

apaga_Lgreen:
	addi x12, x0, 6
	addi x13, x0, 0
	sb x12, 1033(x0)
	sb x13, 1034(x0)
	halt

acende_Rred:
	addi x12, x0, 9
	addi x13, x0, 255
	sb x12, 1033(x0)
	sb x13, 1034(x0)
	halt

apaga_Rred:
	addi x12, x0, 9
	addi x13, x0, 0
	sb x12, 1033(x0)
	sb x13, 1034(x0)
	halt

acende_Ryellow:
	addi x12, x0, 10
	addi x13, x0, 255
	sb x12, 1033(x0)
	sb x13, 1034(x0)
	halt

apaga_Ryellow:
	addi x12, x0, 10
	addi x13, x0, 0
	sb x12, 1033(x0)
	sb x13, 1034(x0)
	halt

acende_Rgreen:
	addi x12, x0, 11
	addi x13, x0, 255
	sb x12, 1033(x0)
	sb x13, 1034(x0)
	halt

apaga_Rgreen:
	addi x12, x0, 11
	addi x13, x0, 0
	sb x12, 1033(x0)
	sb x13, 1034(x0)
	halt


