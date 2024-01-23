//
//  tapGestureView.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 16/01/24.
//

import SwiftUI

struct tapGestureView: View {
    @State var clicked : Bool = false
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .frame(height: 250)
            .padding(25)
            .foregroundColor(clicked ? Color.black : Color.red)
        
        Button(action: {
            clicked.toggle()
        }, label: {
            /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                .font(.title)
                .foregroundStyle(Color.white)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(25)
                .padding(25)
            
            
        })
        
        Text("Tap Gesture")
            .font(.title)
            .foregroundStyle(Color.white)
            .frame(maxWidth: .infinity)
            .background(Color.blue)
            .cornerRadius(25)
            .padding(25)
            .onTapGesture(count: 2, perform: {
                clicked.toggle()
            })
        //like on IG doble tap to like photo
        
//            .onTapGesture {
//                clicked.toggle()
//            }
        
        Spacer()
    }
}

#Preview {
    tapGestureView()
}
