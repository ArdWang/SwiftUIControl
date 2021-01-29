//
//  ScaledBezier.swift
//  SwiftUIControl
//
//  Created by RND on 2021/1/28.
//

import SwiftUI

struct ScaledBezier: Shape {
    let bezierPath: UIBezierPath
    
    func path(in rect:CGRect) -> Path {
        let path = Path(bezierPath.cgPath)
        let multiplier = min(rect.width, rect.height)
        let transform = CGAffineTransform(scaleX: multiplier, y: multiplier)
        return path.applying(transform)
    }
    
}


