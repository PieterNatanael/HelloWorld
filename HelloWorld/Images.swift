//
//  Images.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 20/12/23.
//

import SwiftUI

struct Images: View {
    var body: some View {
        
        Image("33")
            //.renderingMode(.template)
            .resizable()
            .scaledToFit()
            //.foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            .foregroundColor(Color.gray)
        Image("33")
            .renderingMode(.template)
            .resizable()
            .scaledToFit()
            //.foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            .foregroundColor(Color(#colorLiteral(red: 1, green: 0.1857388616, blue: 0.5733950138, alpha: 1)))
        Image("hand")
            //.renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
            .resizable()
            .scaledToFit()
            //.foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        Image("eye")
            .resizable()
            .frame(width: 300, height: 300)
            .background(
        Circle()
            .fill(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.red]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
            .frame(width: 350, height: 350)
            .scaledToFill()
            //.clipped()
            //.cornerRadius(150)
            .clipShape(
                /*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/
            )
                //Rectangle()
            )
    }
}

#Preview {
    Images()
}
