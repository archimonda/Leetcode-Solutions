//
//  LJXReverseInt.swift
//  AuvGo
//
//  Created by 刘吉新 on 2019/5/24.
//  Copyright © 2019 com.auvgo.tmc. All rights reserved.
//

//写的比较low,有好方法的小伙伴欢迎指导,在该方法的下方,另写一个好的方法或指导意见,谢谢!

func reverse(_ x: Int) -> Int {
            var num = x
            var result = 0;
            while num != 0 {
                // 获得最后一个数
                let temp = num % 10
                // 去除最后一位  
                num /= 10  
                // 正数溢出检查
                if result > 214748364 || (result == 214748364 && temp > 7) {
                    return 0
                }
                // 负数溢出检查
                if result < -214748364 || (result == -214748364 && temp < -8) {
                    return 0
                }
                // 反转
                result = result * 10 + temp
            }
            return result
        }


