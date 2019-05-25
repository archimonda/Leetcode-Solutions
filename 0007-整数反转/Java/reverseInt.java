
// 07_整数反转_Java


class Solution {
    public int reverse(int inputInt) {
        int result = 0;
        while (inputInt != 0) {
            int temp = inputInt % 10; //获得最后一位
            inputInt /= 10; //去除最后一位
            if (result > Integer.MAX_VALUE / 10 || (result == Integer.MAX_VALUE / 10 && temp > 7)) { //正数溢出检查
                return 0;
            }
            if (result < Integer.MIN_VALUE / 10 || (result == Integer.MIN_VALUE / 10 && temp < -8)) { //负数溢出时检查
                return 0;
            }
            result = result * 10 + temp; //反转
        }
        return result;

    }
}
