//
//  ClipShapeModifier.swift
//  SwiftUIControl
//
//  Created by RND on 2021/1/29.
//

import SwiftUI

struct ClipShapeModifier<T: Shape>: ViewModifier {
    let shape: T
    
    func body(content: Content) -> some View {
        content.clipShape(shape)
    }
    
}

