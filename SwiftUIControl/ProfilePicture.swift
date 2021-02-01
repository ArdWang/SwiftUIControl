//
//  ProfilePicture.swift
//  SwiftUIControl
//
//  Created by RND on 2021/2/1.
//

import SwiftUI

struct ProfilePicture: View {
    
    var imageName: String
    
    var body: some View {
        Image(systemName: "pencil.circle")
            .resizable()
            .frame(width: 100, height: 100)
            .clipShape(Circle())
    }
}


