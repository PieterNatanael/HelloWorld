//
//  Frames.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 20/12/23.
//

import SwiftUI

struct Frames: View {
    var body: some View {
        
        Image(systemName: "heart.fill")
            .font(.largeTitle)
            .foregroundColor(.white)
        
            .background(
            Circle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
                .overlay(
               Circle()
                .foregroundColor(.blue)
                .overlay(
                    Text("3")
                        .foregroundColor(.white)
//                Image(systemName: "heart.fill")
//                    .foregroundColor(.white)
                
                )
                .frame(width: 30, height: 30)
               ,alignment: .bottomTrailing
               
                ))
            
            .padding(40)
        Image("eye")
            .resizable()
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .frame(width: 130, height: 130)
            .background(Color.blue)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .frame(width: 150, height: 150)
            .background(Color.red)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
        
        
            
        Image("33")
            .resizable()
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            .background(Color.gray)
            .foregroundColor(.white)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .frame(width: 150, height: 150)
            .background(Color.red)
            .frame(width: 170, height: 170)
            .background(LinearGradient(gradient: /*@START_MENU_TOKEN@*/Gradient(colors: [Color.red, Color.blue])/*@END_MENU_TOKEN@*/, startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
        
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.green)
            .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(Color.red)
            .frame(width: 150)
            .background(Color.orange)
            .frame(height: 150)
            .background(Color.green)
            .frame(width: 200)
            .background(Color.purple)
    }
}

#Preview {
    Frames()
}
