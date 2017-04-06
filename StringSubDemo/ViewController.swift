//
//  ViewController.swift
//  StringSubDemo
//
//  Created by yaoqi on 17/3/24.
//  Copyright © 2017年 yaoqi. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.red
        let str:NSString = "http://www.baidu.com?id=122&name=张三&age=12&sex=女"
        print("原来的网址 == \(str)")
        let subStrName = "name"
        let getStr = String.getHttpStringParm(httpString: str, paramString: subStrName as NSString)
        print("获取\(subStrName)出来的字符串为：--- \(getStr)")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

