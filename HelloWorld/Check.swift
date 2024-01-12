//
//  Check.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 20/12/23.
//

import SwiftUI

struct Check: View {
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
                .overlay(
                    Text("3")
                        .foregroundColor(.white)
//                Image(systemName: "heart.fill")
//                    .foregroundColor(.white)
                
                )
                .frame(width: 30, height: 30)
               ,alignment: .bottomTrailing
               
                )
            
            
                
            
            
            
            )
        
        
        
    }
}

#Preview {
    Check()
}
