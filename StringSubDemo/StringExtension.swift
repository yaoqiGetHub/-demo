//
//  StringExtension.swift
//  StringSubDemo
//
//  Created by yaoqi on 17/3/24.
//  Copyright © 2017年 yaoqi. All rights reserved.
//

import UIKit
import Foundation
class StringExtension: NSObject {

    
}
extension String {
    /*
     func            获得网址里面固定参数方法
     httpString      httpString网址
     paramString     截取固定的网址参数（获取paramString后面的参数）
     return          网址对应截取的参数
     */
   static func getHttpStringParm(httpString:NSString,paramString:NSString) -> NSString {
        let str:NSString = httpString
        var ttArr:NSArray?
        var lastStr:NSString?
        if str.contains("?") {
            let arr = str.components(separatedBy: "?")
            let canString = arr[1]
            let tempArr = canString.components(separatedBy: "&")
            ttArr = tempArr as NSArray?
        }
        if ttArr != nil {
            for tempStr in ttArr! {
                let stArr = (tempStr as AnyObject).components(separatedBy: "=")
                var i = 0
                for st in stArr {
                    if st == paramString as String {
                        lastStr = stArr[i+1] as NSString?
                        break;
                    }
                    i += 1
                }
            }
        }
        return lastStr ?? ""
    }
}

