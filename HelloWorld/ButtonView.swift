//
//  ButtonView.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 23/12/23.
//

import SwiftUI



struct ButtonView: View {
    @State var title : String = "This is Title"
    
    var body: some View {
        VStack {
            Text(title)
            
            Button("This is Button") {
                self.title = "button is pressed"
            }
            .accentColor(.red)
            
            Button(action: {
                self.title = "button no 2 is pressed"
            }, label: {
                Text("safe".uppercased())
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.bold)
                    .foregroundStyle(Color.white)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(Color.blue
                        .cornerRadius(20)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    )
            })
            
            Button(action: {
                self.title = "button no 3 is pressed"
            }, label: {
                Circle()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Text("Button")
                        .foregroundColor(Color.white)
                        .font(.title)
                    )
            })
            
            Button(action: {
                self.title = "button 4th is pressed"
            }, label: {
                Text("finish".uppercased())
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(Color.blue)
                    .padding()
                    .background(
                    Capsule()
                        .stroke(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/, lineWidth: 2.0)
                       
                    )
            })
            
        }
    }
}

#Preview {
    ButtonView()
}
