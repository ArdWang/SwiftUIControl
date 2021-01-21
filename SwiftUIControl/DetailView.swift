//
//  DetailView.swift
//  SwiftUIControl
//
//  Created by RND on 2021/1/21.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        VStack{
            Text("Second View")
        }.onAppear{
            print("DetailView appeared!")
        }.onDisappear{
            print("DetailView disappeared!")
        }
    }
}

