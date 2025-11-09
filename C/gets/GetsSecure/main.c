//
//  main.c
//  GetsSecure
//
//  Created by JUNHEE JO on 11/7/25.
//

#include <stdio.h>

int main(void) {
    char szString[8] = { 0 } ;

    //gets(szString);
    fgets(szString, sizeof(szString), stdin);
    puts(szString);
}
