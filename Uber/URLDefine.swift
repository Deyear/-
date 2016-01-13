//
//  URLDefine.swift
//  Uber
//
//  Created by 牛牛 on 16/1/13.
//  Copyright © 2016年 MZ. All rights reserved.
//

import Foundation
//防止在发布的时候忘记将测试的内网地址改成外网地址
func serverAddress()->String{
    //定义内网地址
    var address = "http://172.16.19.18"
    #if AppSure
        //在外网的地址
        address = "http://www.uber.com"
   
    #endif
    return address
}