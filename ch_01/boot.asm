; ORG is a macro
; 0x7c00 memory address where we have to copy the MBR
[ORG 0x7c00]
; este comando dice, todo lo que hay debajo de mí lo colocas en esta dirección de memoria

; vamos a trabajar en modo de 16 bits
[BITS 16]

; Código de arranque

; Que queremos que pase cuando se termine?
; Si no le decimos nada, entonces sigue iterando por la memoria RAM de forma sucesiva
; queremos que se quede quieta -> lo logramos/implementamos diciéndole que ejecute la misma instrucción todo el rato
jmp $   ; salta al mismo sitio
; $ quiere decir al mismo sitio
; saltamos en un bucle infinito

; directiva times, cuantas veces quieres hacer lo de la derecha
times 510-($-$$) db 0
; $ posición actual
; $$ es inicio del programa
; 510 - 8 - 1 
; posición actual es 8, porque?
; posición inicial es 1
; 510 "menos el tamano del programa"
; db 0 define byte as/to 0

; para indicar que un disco es de arranque tenemos que escribir AA en el byte 510 y 55 en el byte 512 (empezemos a contar en byte 0)
dw 0xaa55
; esto se llama una "palabra", lo que llena un registro, como estamos en 16 bits, entonces una palabra son 16 bits = 2 byes.
; dw -> define word



