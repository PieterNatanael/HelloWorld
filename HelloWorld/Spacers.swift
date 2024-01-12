//
//  Spacers.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 20/12/23.
//

import SwiftUI

struct Spacers: View {
    var body: some View {
        
        VStack {
            HStack{
                
                Image(systemName: "xmark")
                
                
                Spacer()
                
                Image(systemName: "phone")
            }
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        .background(Color.blue)
        .padding(.horizontal,10)
            
        }
        Spacer()
            .frame(width:10)
            .background(Color.blue)
        
        HStack{
            
            Spacer(minLength: 5)
                .frame(height:10)
                .background(Color.orange)
            
            Rectangle()
                .fill(Color.red)
                .frame(width: 80, height: 80)
            
            Spacer()
                .frame(height:10)
                .background(Color.orange)
            
            Rectangle()
                .fill(Color.red)
                .frame(width: 80, height: 80)
            
            Spacer()
                .frame(height:10)
                .background(Color.orange)
            
            Rectangle()
                .fill(Color.red)
                .frame(width: 80, height: 80)
            Spacer(minLength: 5)
                .frame(height:10)
                .background(Color.orange)
        }
//        .padding(200)
    }
}

#Preview {
    Spacers()
}
