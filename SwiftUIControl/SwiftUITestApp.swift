//
//  SwiftUITestApp.swift
//  SwiftUIControl
//
//  Created by RND on 2021/1/25.
//

import SwiftUI

struct SwiftUITestApp: App {
    var body: some Scene {
        WindowGroup{
            TabView{
                HomeView()
                AccountView()
                ProfileView()
                SettingsView()
            }
            .tabViewStyle(PageTabViewStyle())
        }
    }
}


