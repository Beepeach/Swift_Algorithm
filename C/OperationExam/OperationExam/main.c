//
//  main.c
//  OperationExam
//
//  Created by JUNHEE JO on 11/11/25.
//

#include <stdio.h>

int main(void) {
    int input = 0;
    printf("초를 정수로 입력해주세요: ");
    scanf("%d", &input);

    printf("%d초는 %d시간 %02d분 %02d초 입니다.\n",
           input,
           input / 3600,
           (input % 3600) / 60,
           input % 60);

    return 0;
}
