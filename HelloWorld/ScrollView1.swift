//
//  ScrollView.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 21/12/23.
//

import SwiftUI

struct ScrollView1: View {
    var body: some View {
        
        
        let nomor : Int = 1
        let word : String = "Y"
        
        ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, content: {
            
            ForEach(0..<100) { index in
                Circle()
                    .overlay(
                    Text("1\(nomor)\(word)")
                       .font(.system(size: 100))
                       .foregroundColor(.white)
                
            )}
        })
        
        ScrollView {
            
         VStack{
             
             ForEach(0..<100) { index in
                 Circle()
                     .overlay(
                     Text("1\(nomor)\(word)")
                        .font(.system(size: 100))
                        .foregroundColor(.white)
                 
             )}
                Circle()
                 .overlay(
                 Text("1\(nomor)\(word)")
                    .font(.system(size: 100))
                    .foregroundColor(.white)
                 )
                Circle()
                 .overlay(
                 Text("1\(nomor)\(word)")
                    .font(.system(size: 100))
                    .foregroundColor(.white)
                 )
                Circle()
                 .overlay(
                 Text("1\(word)")
                    .font(.system(size: 100))
                    .foregroundColor(.white)
                 )
                Circle()
                 .overlay(
                 Text("1\(word)")
                    .font(.system(size: 100))
                    .foregroundColor(.white)
                 )
            }
        }
    
    }
}

#Preview {
    ScrollView1()
}
