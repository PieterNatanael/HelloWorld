//
//  Gradients.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 20/12/23.
//

import SwiftUI

struct Gradients: View {
    var body: some View {
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .fill(
                //Color.red
//                LinearGradient(
//                    colors: [Color(#colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1)),Color(#colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1))],
//                    startPoint:.topLeading,
//                    endPoint: .bottomTrailing)
//                RadialGradient(colors: [Color(#colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)), Color(#colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1))], center:.center, startRadius:5, endRadius:200)
                AngularGradient(colors: [Color(#colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)), Color(#colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1))], center: .topLeading, angle: .degrees(180+45))
            )
            .frame(width: 300, height: 300)
            
    }
}

#Preview {
    Gradients()
}
