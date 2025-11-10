//
//  Scanf%d.c
//  Scanf%d
//
//  Created by JUNHEE JO on 11/9/25.
//

#include <stdio.h>
#include <string.h>

int main(void) {
    int age = 0;
    char szName[32] = { 0 };
    int num = 0;

    // %*c 없으면 이름을 입력하세요에서 입력없이 끝나버린다.
    printf("나이를 입력하세요: ");
    scanf("%d%*c", &age);

    printf("이름을 입력하세요: ");
    fgets(szName, sizeof(szName), stdin);
    szName[strcspn(szName, "\n")] = '\0';
    printf("당신의 나이는 %d살이고 이름은 %s입니다.\n", age, szName);

    // 이렇게 scanf에서 \n을 사용하면 입력이 whitespace말고 다른것을 입력할때까지 끝나지 않는다.
    printf("숫자를 입력하세요: ");
    scanf("%d\n", &num);
    printf("입력한 숫자는 %d입니다.\n", num);

    return 0;
}
