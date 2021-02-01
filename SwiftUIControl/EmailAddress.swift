//
//  EmailAddress.swift
//  SwiftUIControl
//
//  Created by RND on 2021/2/1.
//

import SwiftUI

struct EmailAddress: View {
    
    var address: String
    
    var body: some View {
        HStack{
            Image(systemName: "envelope")
            Text(address)
        }
    }
}


