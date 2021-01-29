//
//  ScaledCircle.swift
//  SwiftUIControl
//
//  Created by RND on 2021/1/29.
//

import SwiftUI

struct ScaledCircle: Shape {
    var animatableData: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let maximumCircleRadius = sqrt(rect.width * rect.width + rect.height * rect.height)
        let circleRadius = maximumCircleRadius * animatableData
        
        let x = rect.minX - circleRadius / 2
        let y = rect.midY - circleRadius / 2
        
        let circleRect = CGRect(x: x, y: y, width: circleRadius, height: circleRadius)
        
        return Circle().path(in: circleRect)
    }
    
}


