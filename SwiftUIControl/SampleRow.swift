//
//  SampleRow.swift
//  SwiftUIControl
//
//  Created by RND on 2021/1/20.
//

import SwiftUI


struct SampleRow: View {
    
    let id: Int
    
    var body: some View {
        Text("Row \(id)")
    }
    
    init(id: Int) {
        print("Loading row \(id)")
        self.id = id
    }
}


