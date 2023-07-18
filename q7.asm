vermelho_esq: .bytes 3
amarelo_esq: .bytes 5
amarelo_dir: .bytes 6
verde_esq: .bytes 9
verde_dir: .bytes 10
vermelho_dir: .bytes 11
dezesseis: .half 16
vinte1: .half 21
vinte6: .half 26
trinta1: .half 31
trinta6: .half 36
trinta5: .half 35

Get_temperature:
    lh x10, 1031(x0) #faz a leitura analógica e coloca no reg x10
    
    blt x10, dezesseis, Left_Red_LED #Se x10 < 16, acende LED vermelho esquerdo
    blt x10, vinte1, Left_Yellow_LED  #Se x10 < 21 (e x10 >= 16 ja que se fosse menor nunca chegaria nessa linha), acende LED Amarelo esquerdo
    blt x10, vinte6, Right_Yellow_RED  #Se x10 < 26 (e x10 >= 21), acende LED amarelo direito
    blt x10, trinta1, Left_Green_LED    #Se x10 < 31 (e x10 >= 26), acende LED verde esquerdo
    blt x10, trinta6, Right_Green_LED   #Se x10 < 36 (e x10 >= 31), acende LED verde direito
    bge x10, trinta5, Right_Red_LED     #Se x10 > 35, acende LED vermelho direito

#Coloca o valor em x9, escreve no led correspondente e volta para a leitura

Left_Red_LED:
    lb x9, verde_esq 
    sb x9, 1034(x0) 
    jal x11, Get_temperature

Left_Yellow_LED:
    lb x9, amarelo_esq
    sb x9, 1034(x0)
    jal x11, Get_temperature

Left_Green_LED:
    lb x9, verde_esq
    sb x9, 1034(x0)
    jal x11, Get_temperature

Right_Red_LED:
    lb x9, vermelho_dir
    sb x9, 1034(x0)
    jal x11, Get_temperature

Right_Yellow_RED:
    lb x9, amarelo_dir
    sb x9, 1034(x0)
    jal x11, Get_temperature

Right_Green_LED:
    lb x9, verde_dir
    sb x9, 1034(x0)
    jal x11, Get_temperature

################################################################################