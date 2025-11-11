//
//  main.c
//  Scanf
//
//  Created by JUNHEE JO on 11/9/25.
//

#include <stdio.h>

int main(void) {
    // 기본 문자 입력
    char ch = 0;
    scanf("%c%*c", &ch);
    printf("입력한 문자는 %c입니다.\n", ch);

    // %*c 없으면 이전 입력한 엔터가 남아있어서 엔터 후 문자3개가 출력됨
    char szBuffer[4] = { 0 };
    scanf("%4c", szBuffer);
    printf("입력한 문자는 %c%c%c%c입니다.\n", szBuffer[0], szBuffer[1], szBuffer[2], szBuffer[3]);


    return 0;
}
