//
//  Colors.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 16/12/23.
//

import SwiftUI

struct Colors: View {
    var body: some View {
        Circle()
            //.fill(Color(Color(#colorLiteral(red: 1, green: 0, blue: 0.9195910096, alpha: 1))))
            //.fill(Color(#colorLiteral(red: 0.4755743146, green: 1, blue: 0.5474424958, alpha: 1)))
            .fill(Color("Color"))
            .frame(width: 200, height: 200)
            //.shadow(radius: 20)
            //.shadow(color: .purple, radius: 30
            //.shadow(color: Color("Color").opacity(0.5), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/
            .shadow(color: Color(#colorLiteral(red: 0, green: 0.9903990626, blue: 0, alpha: 1)).opacity(0.9), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/
            )
    }
}

#Preview {
    Colors()
}
