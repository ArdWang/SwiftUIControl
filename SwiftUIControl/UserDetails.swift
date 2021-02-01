//
//  UserDetails.swift
//  SwiftUIControl
//
//  Created by RND on 2021/2/1.
//

import SwiftUI

struct UserDetails: View {
    
    var user: User1
    
    var body: some View {
        VStack(alignment: .leading){
            Text(user.name)
                .font(.largeTitle)
                .foregroundColor(.primary)
            Text(user.jobTitle)
                .foregroundColor(.secondary)
            EmailAddress(address: user.emailAddress)
        }
    }
}


