//
//  Scanf%d.c
//  ScanfWhiteSpace
//
//  Created by JUNHEE JO on 11/9/25.
//

#include <stdio.h>

int main(void) {
    char szChar[32] = { 0 };
    printf("ab cdf라고 문자열을 입력하세요.\n");
    scanf("%s", szChar);
    printf("입력값: %s\n", szChar);
    return 0;
}
