//
//  NewUserView.swift
//  SwiftUIControl
//
//  Created by RND on 2021/1/26.
//

import SwiftUI

struct NewUserView: View {
    
    @Binding var isPresented: Bool
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        VStack{
            Text("hdhasdjashd")
            Button(action:{
                self.presentationMode.wrappedValue.dismiss()
            }){
                Text("点击我消失")
            }
        }
        
       // self.presentationMode.wrappedValue.dismiss()
        
    }
}

/*struct NewUserView_Previews: PreviewProvider {
    static var previews: some View {
        NewUserView(isPresented: isPresented)
    }
}*/
