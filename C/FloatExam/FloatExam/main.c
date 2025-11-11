//
//  main.c
//  FloatExam
//
//  Created by JUNHEE JO on 11/9/25.
//

#include <stdio.h>

int main(void) {
    double x = 123.456;

    printf("%lu\n", sizeof(123.456F));
    printf("%lu\n", sizeof(123.456));

    printf("%f\n", 123.456F); // 바로 오차 발생
    printf("%f\n", 123.456);

    return 0;
}
