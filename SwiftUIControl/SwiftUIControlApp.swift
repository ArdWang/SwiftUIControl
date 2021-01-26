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
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(settings)
            
            /*TabView {
                
                HomeView()
                AccountView()
                ProfileView()
                SettingsView()
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            */
        }
        
    }
}
