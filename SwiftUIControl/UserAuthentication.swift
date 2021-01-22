//
//  UserAuthentication.swift
//  SwiftUIControl
//
//  Created by RND on 2021/1/22.
//

import SwiftUI
import Combine

class UserAuthentication: ObservableObject {
    
    let objectWillChange = ObservableObjectPublisher()
    
    var username = "" {
        willSet{
            objectWillChange.send()
        }
    }
}


