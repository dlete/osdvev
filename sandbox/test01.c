/*
// No funciona
int main() {
    // la direccion 0x65346 no existe, nos va a dar un error 
    char * ptr = 0x65346;
    // pon el caracter 'H' en la dirección de memoria 'ptr'
    *ptr = 'H';
}
*/

// Si funciona
#include <stdlib.h> /* for EXIT_SUCCESS */
#include <stdio.h>  /* for printf() */

int main() {
    // asigname 100 direcciones virtuales. El propio sistema operativo, el kernel en particular se encarga de mapear a una dirección real.
    char *ptr = malloc(100);
    *ptr = 'H';
    printf((void*) ptr);
    return EXIT_SUCCESS;
}