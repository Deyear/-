//
//  FxDefine.swift
//  Uber
//
//  Created by 牛牛 on 16/1/12.
//  Copyright © 2016年 MZ. All rights reserved.
//

import Foundation
import UIKit
//定义常量相当于OC里的宏
let LoadingTip = "加载中..."
let screenHeight = UIScreen.mainScreen().bounds.size.height
func fxlog(message:String,function:String = __FUNCTION__){
    #if DEBUG
        print("log:\(message),\(function)")
    #else
    #endif
}
//检测设备
func isiphone5() ->Bool{
    if screenHeight == 568{
        return true
    }
    return false
}