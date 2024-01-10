.model small
.code
org 100h 

start:
	jmp mulai

a db 01
b db 01
c db 03
d db 04
e db 05
f db 06 
g db 07
j dw 15

daftar  db 13,10,'+----------------------------------------------------------+'
	db 13,10,'|             DAFTAR HANDPHONE TERBARU 2024                |'
 	db 13,10,'+---+--------------------+--------+------------------------+'
	db 13,10,'|No |  Merek Handphone   |  Tahun |         Harga          |'
	db 13,10,'+---+--------------------+--------+------------------------+'
	db 13,10,'+01 + Samsung Galaxy A25 +  2024  +       4.399.000        +'
 	db 13,10,'+---+--------------------+--------+------------------------+'
	db 13,10,'+02 +      POCO C65      +  2024  +       1.699.000        +'
 	db 13,10,'+---+--------------------+--------+------------------------+'
	db 13,10,'+03 +     OPPO RENO11    +  2024  +       3.900.000        +'
 	db 13,10,'+---+--------------------+--------+------------------------+'
	db 13,10,'+04 +   TECNO SPARK 20   +  2024  +       1.500.000        +'
 	db 13,10,'+---+--------------------+--------+------------------------+'
	db 13,10,'+05 +  INFINIX HOT 40i   +  2024  +       1.499.000        +'
	db 13,10,'+---+--------------------+--------+------------------------+'
	db 13,10,'+06 +      VIVO V29e     +  2024  +       3.695.000        +'
 	db 13,10,'+---+--------------------+--------+------------------------+'
	db 13,10,'+07 +    OPPO FIND N3    +  2024  +      29.999.000        +'
 	db 13,10,'+---+--------------------+--------+------------------------+','$'


error	  db 13,10,'KODE YANG ANDA MASUKKAN SALAH $'
pilih_mtr db 13,10,'Silahkan masukkan No/kode Handphone yang Anda pilih: $'

	mulai:
	mov ah,09h
	mov dx,offset daftar
	int 21h
	mov ah,09h
	jmp proses
	jne error_msg

error_msg:
	mov ah,09h
	mov dx,offset error
	int 21h
	int 20h

proses:
	mov ah,09h
	mov dx,offset pilih_mtr
	int 21h

	
	mov ah,1
	int 21h
	mov bl,al
	cmp bh,'0'
	cmp bl,'1'
	je hasil1

	cmp bh,'0'
	cmp bl,'2'
	je hasil2

	cmp bh,'0'
	cmp bl,'3'
	je hasil3

	cmp bh,'0'
	cmp bl,'4'
	je hasil4

	cmp bh,'0'
	cmp bl,'5'
	je hasil5

	cmp bh,'0'
	cmp bl,'6'
	je hasil6  
	
	cmp bh,'0'
	cmp bl,'7'
	je hasil7

	jne error_msg


hasil1:
	mov ah,09h
	lea dx,teks1
	int 21h
	int 20h

hasil2:
	mov ah,09h
	lea dx,teks2
	int 21h
	int 20h

hasil3:
	mov ah,09h
	lea dx,teks3
	int 21h
	int 20h

hasil4:
	mov ah,09h
	lea dx,teks4
	int 21h
	int 20h

hasil5:
	mov ah,09h
	lea dx,teks5
	int 21h
	int 20h

hasil6:
	mov ah,09h
	lea dx,teks6
	int 21h
	int 20h
	
hasil7:
	mov ah,09h
	lea dx,teks7
	int 21h
	int 20h

teks1	db 13,10,'Anda Memilih Samsung Galaxy A25'
 	db 13,10,'Keluaran Tahun 2024'
 	db 13,10,'Total harga yang Harus Anda Bayar: Rp. 4.399.000 '
 	db 13,10,'Terima Kasih $'

teks2	db 13,10,'Anda Memilih Poco C65'
 	db 13,10,'Keluaran Tahun 2024'
 	db 13,10,'Total harga yang Harus Anda Bayar: Rp. 1.699.000 '
 	db 13,10,'Terima Kasih $'

teks3	db 13,10,'Anda Memilih Oppo Reno11'
 	db 13,10,'Keluaran Tahun 2024'
 	db 13,10,'Total harga yang Harus Anda Bayar: Rp. 3.900.000 '
 	db 13,10,'Terima Kasih $'

teks4	db 13,10,'Anda Memilih Tecno Spark 20'
 	db 13,10,'Keluaran Tahun 2024'
 	db 13,10,'Total harga yang Harus Anda Bayar: Rp. 1.500.000 '
 	db 13,10,'Terima Kasih $'

teks5	db 13,10,'Anda Memilih Infinix Hot 40i '
 	db 13,10,'Keluaran Tahun 2024'
 	db 13,10,'Total harga yang Harus Anda Bayar: Rp. 1.499.000 '
 	db 13,10,'Terima Kasih $'

teks6	db 13,10,'Anda Memilih Vivo V29e'
 	db 13,10,'Keluaran Tahun 2024'
 	db 13,10,'Total harga yang Harus Anda Bayar: Rp. 3.695.000 '
 	db 13,10,'Terima Kasih $'

teks7	db 13,10,'Anda Memilih Oppo Find N3'
 	db 13,10,'Keluaran Tahun 2024'
 	db 13,10,'Total harga yang Harus Anda Bayar: Rp. 29.999.000 '
 	db 13,10,'Terima Kasih $'

end start
