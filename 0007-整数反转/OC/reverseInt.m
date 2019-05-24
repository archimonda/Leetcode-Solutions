//
//  LJXReverseInt.m
//  LJXDemo
//
//  Created by 刘吉新 on 2019/5/24.
//  Copyright © 2019年 com.auvgo.tmc. All rights reserved.
//

#define INT_MAX 2147483647  //INT_MAX = 2^31-1 = 2147483647
#define INT_MIN -2147483648 //INT_MIN = -2^31=-2147483648

#pragma mark - 07_整数反转_OC
//每次拿出整数的最后一位，放到新的整数变量 result 后面
//非好方法,小伙伴们有好的方法请补充,并在下方添加,谢谢!
- (NSInteger)reverse:(NSInteger)inputInt {
    NSInteger result = 0;
    while (inputInt != 0) {
        //获得最后一位
        NSInteger temp = inputInt % 10;
        //去除最后一位
        inputInt /= 10;
        //正数溢出检查
        if (result > INT_MAX / 10 || (result == INT_MAX / 10 && temp > 7)) {
            return 0;
        }
        //负数溢出时检查
        if (result < INT_MIN / 10 || (result == INT_MIN / 10 && temp < -8)) {
            return 0;
        }
        result = result * 10 + temp; //反转
    }
    return result;
}
