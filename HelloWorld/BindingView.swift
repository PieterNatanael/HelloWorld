//
//  BindingView.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 25/12/23.
//

import SwiftUI

struct BindingView: View {
    
    
    @State var backgroundColor : Color = Color.green
    @State var title : String = "This is the Title"
    
    var body: some View {
        ZStack{
            //background
            backgroundColor
                .ignoresSafeArea()
            
            //content
            VStack {
                Text(title)
                    .font(.largeTitle)
                    .foregroundStyle(Color.white)
                buttonView(backgroundColor: $backgroundColor, title: $title)            }
            
            
        }

    }
    
    struct buttonView: View {
        
        @Binding var backgroundColor : Color
        @State var buttonColor : Color = Color.blue
        @Binding var title : String
        
        var body: some View {
            Button(action: {
                
                backgroundColor = Color.red
                buttonColor = Color.orange
                title = "New Title 33"
            }, label: {
                Text("Button")
                    .font(.largeTitle)
                    .padding()
                    .padding(.horizontal)
                    
                    .foregroundStyle(Color.white)
                    .background(
                        buttonColor
                            //.frame(width: 140, height: 80)
                            //.cornerRadius(25)
                    )
                    .cornerRadius(25)
            })
        }
    }
}

#Preview {
    BindingView()
}
