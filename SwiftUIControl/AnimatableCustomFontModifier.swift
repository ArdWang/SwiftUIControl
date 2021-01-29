//
//  AnimatableCustomFontModifier.swift
//  SwiftUIControl
//
//  Created by RND on 2021/1/29.
//

import SwiftUI

struct AnimatableCustomFontModifier: AnimatableModifier {
    
    /*
    var name: String
    var size: CGFloat
    
    var animatableData: CGFloat{
        get { size }
        set { size = newValue }
    }
    
    func body(content: Content) -> some View {
        content.font(.custom(name, size:size))
    }
    */
    
    var size: CGFloat
    var weight: Font.Weight
    var design: Font.Design
    
    var animatableData: CGFloat {
        get { size }
        set { size = newValue }
    }
    
    func body(content: Content) -> some View {
        content.font(.system(size:size, weight:weight, design:design))
    }
    
    
    
}


