
# To do
[About README's in Github][def]

Crear una imagen del entorno de trabajo en Docker

Script para instalar los requerimientos

Verificar que los requerimientos están instalados (`dpkg -l | grep <package>` con un for? o `man <package>`)

Add a contracts file. AND do not add to git.

Investigate how to get this message: "Press 'Ctrl+I' to ask GitHub Copilot Chat to do something." 


# How to
Hablar con un usuario. En TEAMS, buscar al usuario. El profesor es xabier.iglesias.perez@udc.es

Know if qemu is installed? Execute
`qemu-system-x86_64`
Will open a new window 

Know if nasm is installed? Execute
`nasm`, if installed you will see `nasm: fatal: no input file specified`

Complile in `C`
Go to the directory with the file coded in `C`, and:
`
gcc <file.c>
`

Compile with debug
In 54:44
`
gcc -g <file.c>
`
Produces the file `<file.out>`. Then: 
`
gdb <file.out>
`
to launch the debugger

GDB
b main -> break main
n -> next
p -> what it is in there
q -> quit

Execute quemu
`qemu-system-x86_64`
Opens a new window. 
To close `Ctrl + c`

`nasm`
-f quiere decir formato
-fbin quiere decir formato binario puro
`
nasm -fbin boot.asm
`


[def]: https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-readmes


# Preguntas
Si nuestro entorno de trabajo es WSL, con Ubuntu (22.04), ¿debemos instalar `quemu`?


# Resources
https://github.com/TretornESP/
https://github.com/TretornESP/uned24

programa HfD? H seguro, D seguro
HxD, seguro

OSdev.org

youtube channel Ponchos?

canva.com, software for presentations, like Power Point.


# Diario
## 12 March 2024
Todos los procesadores arrancan en 16 bits, luego saltan a 32 o 64.
Modelo Von Neumann, los datos y el programa están ambos en la memoria.
Que es?
DMA, direct memory access? El dispositivo escribe directamente en memoria, no pasa por el procesador/cpu

Registros. Almacenan información. 
Registros generales, 
Registro de instrucción. Puntero que nos dice dentro de la memoria principal (RAM) cual es la siguiente instrucción a ejecutar.
Registro de estado. Las componentes del CU, resultado de la última operación.
Registro de propósito específico. 
Memoria muy pequena y super rápida. 
MSR, Model Specific Registers. No están en todos los procesadores. Son específicos de cada procesador. Ejemplo, para hacer cambio de contexto.

ALU, unidad aritmético lógica. Chip al que le dices que números quieres utilizar como operandos y que operación quieres ejecutar. Tiene dos modos: lógico y aritmético.

CU. Bucle. Gestiona el bucle de ejecución (pipeline). Coger instruccion de memoria, decodificarla (suma, resta, salto), ejecutarla, acción dependiendo del resultado, volver a empezar.

clock, generador de reloj
control bus
address bus
data bus, I/O bus
I/O device #1, #2, ... 
Memory storage unit

PIC, controlador de interrupciones. Arquitecturas (UNIX, Linux, Windows, etc.) orientadas a interrupciones.
Se encarga de gestionar las interrupciones. Antiguamente 2x 8259 en cascada. Actualmente APIC (multiprocesador, un controlador de interrupciones por cada procesador: la PIC local).
Árbitro de interrupciones. Los dispositivos todos quieren interrumpir, PIC los pone en orden. 
Desde, hasta: 49:13

Memoria Virtual
Cada proceso tiene un mapa de memoria propio. Dos tipos de direcciones: de verdad y de mentira. Los de 64 bits trabaja con las de mentira/virtuales. El procesdor las traduce en direcciones de verdad. 
En `C` y en ensamblador podemos escribir en la dirección de memoria que queramos. 
`
void * ptr = 0x64376;

*prt = 'H';
`
Tiene hardware dedicado (nmu) y caché (TLB)
La memoria virtual nos permite aislar un proceso de los otros. 

Desde: 49:13 hasta 1:02:30


Para empezar necesitamos: qemuy y nasm

Flujo de arranque
1. pulsar boton de encendido
2. BIOS se pone a trabajar. Comprueba el hardware -> Power On Self Test
3. BIOS se ejecuta a si misma, le lleva al dispositivo principal. Va al primer sector (512 Bytes, sector de arranque), lo copia a una dirección de memoria y lo ejecuta. AA55 en 510 y 511 el disco es ejecutable. El sector de arranque se copia a la dirección de memoria 0x7c00; es una dirección física. Ver archivo boot.asm
4. `nasm -fbin boot.asm`
5. Comprobar que se ha compilado? ver los archivos en el directorio `ls -lsart`
6. `xxd boot` para ver el código
7. ejecutar con `qemu-system-x86_64 -fda` "fda" es floppy disk adapter. Time 1:14:31


## 14 March 2024
We are working in assembler.

ES, segment. Mapa de segmentación 0. 
GDB no soporta 16 bits. Es muy antiguo.

Para leer del teclado hay que entender interrupcciones. 
UC, Unidad de Control como máquina de estados.
chip 8259 (PIC) gestiona las interrupciones. está conectado a la entrada de interrupciones de la cpu
para la cpu, las interrupciones son prioritarias. Tienen prioridad sobre otros eventos.
ISR, Rutinas Interrupción de Sistema
