//
//  FxGloble.swift
//  Uber
//
//  Created by 牛牛 on 16/1/13.
//  Copyright © 2016年 MZ. All rights reserved.
//

import Foundation
import UIKit
let iOS8 = 8.0
//测试是否是iOS8
func isiOS8()->Bool{
    let version = UIDevice.currentDevice().systemVersion as NSString
    if version.floatValue - Float(iOS8) < -0.001{
    return true
    }
    return false
}