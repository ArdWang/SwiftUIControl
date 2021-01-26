//
//  FullScreenModalView.swift
//  SwiftUIControl
//
//  Created by RND on 2021/1/25.
//

import SwiftUI

struct FullScreenModalView: View {
    
    @Environment(\.presentationMode) var presentionMode
    
    var body: some View {
        
        VStack{
            Text("This is a modal view")
        }
        .frame(maxWidth:.infinity, minHeight: .infinity)
        .background(Color.red)
        .edgesIgnoringSafeArea(.all)
        .onTapGesture{
            presentionMode.wrappedValue.dismiss()
        }
        
    }
}


