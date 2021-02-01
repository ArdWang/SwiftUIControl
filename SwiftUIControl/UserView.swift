//
//  UserView.swift
//  SwiftUIControl
//
//  Created by RND on 2021/2/1.
//

import SwiftUI

struct UserView: View {
    
    var user: User1
    
    var body: some View {
        HStack{
            ProfilePicture(imageName: user.profilePicture)
            UserDetails(user: user)
        }
    }
}


