
// 07_整数反转_C++
//非好方法,小伙伴们有好的方法请补充,并在下方添加,谢谢!

class Solution {
public:
    int reverse(int inputInt) {
        int result = 0; 
        while (inputInt != 0) {
            int temp = inputInt % 10; //获得最后一位
            inputInt /= 10; //去除最后一位
            if (result > 214748364 || (result == 214748364 && temp > 7)) return 0;//正数溢出
            if (result < -214748364 || (result == -214748364 && temp < -8)) return 0;//负数溢出

            result = result * 10 + temp;//反转
        }
        return result;
    }
};
