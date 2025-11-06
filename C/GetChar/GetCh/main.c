//
//  GetCh.c
//  GetChar
//
//  Created by JUNHEE JO on 11/6/25.
//

#include <stdio.h>

int main(void) {
    char ch = 0;
    printf("아무 키나 누르면 다음으로 넘어갑니다. \n");

    // windows conio.h에서 제공 macOS에서는 제공하지 않음
    // ch = _getch();

    printf("입력한 키는 ");
    putchar(ch);
    printf("입니다.\n");
}
