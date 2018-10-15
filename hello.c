#include <stdio.h>

#include "message.h"
#include "print.h"

int main() {
        char * msgHello = getMessage();
        printf( msgHello );
        return 0;
}