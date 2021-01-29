//
//  Checkerboard.swift
//  SwiftUIControl
//
//  Created by RND on 2021/1/28.
//

import SwiftUI

struct Checkerboard: Shape {
    
    let rows: Int
    let columns: Int
    
    
    func path(in rect: CGRect) -> Path {
        
        var path = Path()
        
        let rowSize = rect.height / CGFloat(rows)
        let columnSize = rect.width / CGFloat(columns)
        
        for row in 0 ..< rows {
            for column in 0 ..< columns {
                if(row + column).isMultiple(of: 2){
                    let startX = columnSize * CGFloat(column)
                    let startY = rowSize * CGFloat(row)
                    
                    let rect = CGRect(x: startX, y: startY, width: columnSize, height: rowSize)
                    path.addRect(rect)
                }
            }
        }
        return path
    }
    
}


