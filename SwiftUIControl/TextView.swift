//
//  TextView.swift
//  SwiftUIControl
//
//  Created by RND on 2021/2/1.
//

import SwiftUI


struct TextView: UIViewRepresentable {
    
    @Binding var text: String
    
    func makeUIView(context: Context) -> UITextView {
        return UITextView()
    }
    
    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.text = text
    }
}


