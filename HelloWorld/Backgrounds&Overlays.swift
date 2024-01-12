//
//  Backgrounds&Layovers.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 20/12/23.
//

import SwiftUI

struct Backgrounds_Layovers: View {
    var body: some View {
        Rectangle()
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
            .overlay(
            Rectangle()
                .fill(Color.red)
                .frame(width: 80, height: 80)
                       ,alignment: .bottomLeading
                      )
            
            .background(
            Rectangle()
                .fill(Color.orange)
                .frame(width: 150, height: 150), alignment: .bottomTrailing)
            
            
        Circle()
            .fill(Color.pink)
            .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .overlay(
            Text("1")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .monospaced()
                .foregroundColor(.white)
            )
            .background(
                Circle()
                    .fill(Color.blue)
                    .frame(width: 180, height: 180)
                )
            .background(
                Circle()
                    .fill(Color.orange)
                    .frame(width: 210, height: 210)
            )
            .padding(80)
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            //.frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            .background(
                Circle()
                    .fill(LinearGradient(gradient: /*@START_MENU_TOKEN@*/Gradient(colors: [Color.red, Color.blue])/*@END_MENU_TOKEN@*/, startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            )
            //.frame(width: 150, height: 150)
            .background(
            Circle()
                .fill(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.red]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                .frame(width: 150, height: 150)
            )
        
    }
}

#Preview {
    Backgrounds_Layovers()
}
