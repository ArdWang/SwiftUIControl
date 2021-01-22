//
//  SwiftUIControlApp.swift
//  SwiftUIControl
//
//  Created by RND on 2021/1/19.
//

import SwiftUI

@main
struct SwiftUIControlApp: App {
    
    var settings = UserSettings()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(settings)
        }
    }
}
