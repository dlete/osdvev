
# To do
[About README's in Github][def]

Crear una imagen del entorno de trabajo en Docker

Script para instalar los requerimientos

Verificar que los requerimientos están instalados (`dpkg -l | grep <package>` con un for? o `man <package>`)

Add a contracts file. AND do not add to git.


# How to
Hablar con un usuario. En TEAMS, buscar al usuario. El profesor es xabier.iglesias.perez@udc.es

Know if qemu is installed? Execute
`qemu-system-x86_64`
Will open a new window 

Know if nasm is installed? Execute
`nasm`, if installed you will see `nasm: fatal: no input file specified`


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
Memoria Virtual

PIC, controlador de interrupciones. Arquitecturas (UNIX, Linux, Windows, etc.) orientadas a interrupciones.
Se encarga de gestionar las interrupciones. Antiguamente 2x 8259 en cascada. Actualmente APIC (multiprocesador, un controlador de interrupciones por cada procesador: la PIC local).
Árbitro de interrupciones. Los dispositivos todos quieren interrumpir, PIC los pone en orden. 


## 14 March 2024
We are working in assembler.

ES, segment. Mapa de segmentación 0. 
GDB no soporta 16 bits. Es muy antiguo.

Para leer del teclado hay que entender interrupcciones. 
UC, Unidad de Control como máquina de estados.
chip 8259 (PIC) gestiona las interrupciones. está conectado a la entrada de interrupciones de la cpu
para la cpu, las interrupciones son prioritarias. Tienen prioridad sobre otros eventos.
ISR, Rutinas Interrupción de Sistema
