//
//  PrimaryLabel.swift
//  SwiftUIControl
//
//  Created by RND on 2021/2/1.
//

import SwiftUI

struct PrimaryLabel: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .padding()
            .background(Color.red)
            .foregroundColor(Color.white)
            .font(.largeTitle)
    }
    
}


