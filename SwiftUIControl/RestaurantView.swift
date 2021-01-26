//
//  RestaurantView.swift
//  SwiftUIControl
//
//  Created by RND on 2021/1/26.
//

import SwiftUI

struct RestaurantView: View {
    
    var restaurant: Restaurant
    
    var body: some View {
        Text("Come and eat at \(restaurant.name)")
            .font(.largeTitle)
    }
}


