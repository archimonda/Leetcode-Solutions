//
//  romanToInt.swift
//  swiftTraining
//
//  Created by 王玉朝 on 2019/5/21.
//  Copyright © 2019 鑫考教育. All rights reserved.
//

import UIKit

class romanToInt: UIViewController {

    func romanToInt(s: String) -> Int {
        let dict = initDict()
        let chars = [Character](s.reversed())
        var res = 0
        
        for i in 0..<chars.count {
            guard let current = dict[String(chars[i])] else {
                return res
            }
            if i > 0 && current < dict[String(chars[i - 1])]!{
                res -= current
            } else {
                res += current
            }
        }
        
        return res
    }
    
    private func initDict() -> [String: Int] {
        var dict = [String: Int]()
        
        dict["I"] = 1
        dict["V"] = 5
        dict["X"] = 10
        dict["L"] = 50
        dict["C"] = 100
        dict["D"] = 500
        dict["M"] = 1000
        
        return dict
    }   
    


}
