//
//  AppDelegate.swift
//  SwiftUIControl
//
//  Created by RND on 2021/1/25.
//

import UIKit

class AppDelegate: NSObject, UIApplicationDelegate {
    
    // 如何将AppDelegate添加到SwiftUI应用
    // SwiftUI应用程序使用符合App协议的自定义结构启动，但有时您可能想找回UIApplicationDelegate我们以前拥有的旧功能-也许处理推送通知的注册，响应内存警告，检测时间变化等上
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool{
        print("Your code here")
        return true
    }
}
