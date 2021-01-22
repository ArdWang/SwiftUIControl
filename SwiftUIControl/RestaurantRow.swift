//
//  RestaurantRow.swift
//  SwiftUIControl
//
//  Created by RND on 2021/1/22.
//

import SwiftUI

struct RestaurantRow: View {
    
    var restaurant: Restaurant
    
    var body: some View {
        Text("Restaurant: \(restaurant.name)")
    }
}


