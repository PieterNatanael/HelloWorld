//
//  Shapes.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 16/12/23.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        //Circle()
        //Ellipse()
        //Rectangle()
        //Capsule()
        RoundedRectangle(cornerRadius: 10)
            //.foregroundColor(.orange)
            //.fill(.pink)
//            .stroke(Color.red, lineWidth: 50)
//            .strikethrough(true, color: Color.red)
//
            //.frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
            //.trim(from:0.2, to:01)
        
    }
}

#Preview {
    Shapes()
}
