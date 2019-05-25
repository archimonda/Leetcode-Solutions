//
//  LJXReverseInt.c
//  LJXDemo
//
//  Created by 刘吉新 on 2019/5/24.
//  Copyright © 2019年 com.auvgo.tmc. All rights reserved.
//

// 07_整数反转_C

//每次拿出整数的最后一位，放到新的整数变量 result 后面
//非好方法,小伙伴们有好的方法请补充,并在下方添加,谢谢!

#define INT_MAX 2147483647  //INT_MAX = 2^31-1 = 2147483647
#define INT_MIN -2147483648 //INT_MIN = -2^31=-2147483648

int reverse(int inputInt) {
    int result = 0;
    while(inputInt != 0)
    {
        int temp = inputInt % 10;
        inputInt /= 10;
        //当result > INT_MAX/10，那么这个反转整数必然溢出
        //同理result < INT_MIN/10，那么这个反转整数也溢出
        //如果result = INT_MAX/10 或 INT_MIN/10，那么我们只需要比较最后一位。正数：temp > 7就溢出；负数：temp < -8就溢出
        if(result > INT_MAX / 10 || (result == INT_MAX / 10  && temp > 7))
            return 0;
        if(result < INT_MIN / 10 || (result == INT_MIN / 10 && temp < -8))
            return 0;
        result = result * 10 + temp;
    }
    return result;
}

