//
//  Stacks.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 20/12/23.
//


// ada yang namanya LazyVstack, awalan Lazy agar tidak berat untuk load semua item, dan hanya load yang dibutuhkan.

import SwiftUI

struct Stacks: View {
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 8, content: {
            
            HStack{
                
                ZStack (alignment: .bottom) {
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    
                    Rectangle()
                        .fill(Color.orange)
                        .frame(width: 80
                            , height: 80)
                    
                    
                }
                
                ZStack{
                    Rectangle()
                        .fill(Color.orange)
                        .frame(width: 100
                               , height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    Text("1")
                        .font(.largeTitle)
                        .monospaced()
                        .bold()
                        .foregroundStyle(Color.white)
                        .background(
                        Circle()
                            .frame(width: 60, height: 60)
                            .foregroundColor(.black)
                        )
                }
                
                ZStack{
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    Image("33")
                        .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 50, height: 50)
                    
                }
            }
            
            
            ZStack{
//                Rectangle()
//                    .fill(Color.orange)
//                    .frame(width: 100
//                           , height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
//                Image(systemName: "heart.fill")
//                    .font(.largeTitle)
//                    .foregroundColor(.red)
//                    .background(
//                    Circle()
//                        .frame(width: 77, height: 77)
//                        .foregroundColor(.white)
             //       )
                
            }
            
            ZStack{
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                Image("eye")
                    .resizable()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                
            }
        })
        HStack{
            
            ZStack{
                Rectangle()
                    .fill(Color.red)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .overlay(
                    Circle()
                        .frame(width: 30, height: 30)
                    
                        .overlay(
                    Text("21")
                        .foregroundColor(.white)
                        .bold()
                    )
                    
                    ,alignment: .bottomTrailing
                      
                    )
                
                Image(systemName: "figure.wave")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .bold()
                
            }
            
            ZStack{
                Rectangle()
                    .fill(Color.orange)
                    .frame(width: 100
                           , height: 100)
                Image(systemName: "heart.fill")
                    .font(.largeTitle)
                    .foregroundColor(.red)
                    .background(
                    Circle()
                        .frame(width: 77, height: 77)
                        .foregroundColor(.white))
            }
            ZStack(alignment: .top){
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                
                ZStack(alignment: .bottom){
                    Rectangle()
                        .fill(Color.orange)
                        .frame(width: 80
                               , height: 80)
                    Rectangle()
                        .fill(Color.white)
                        .frame(width: 50
                               , height: 50)
                    
                    
                }
            }
        }
    }
}

#Preview {
    Stacks()
}
