//
//  TextFile.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 16/12/23.
//

import SwiftUI

struct TextFile: View {
    var body: some View {
        Text("Hello, World!Snowball was the softest cat in the neighborhood, but he was also the loneliest. Unlike the other cats who played and purred together, Snowball sat by the window, watching the world go by with a hint of sadness in his green eyes.".capitalized)
//            .font(.title)
//            .fontWeight(.semibold)
//            //.underline(true, color: Color.red)
//            .strikethrough(true, color: Color.red)
//            .underline(true, color: Color.red)
//            .font(.system(size: 24, weight: .semibold, design:.monospaced))
//            .font(.system(size:30, weight:.semibold, design:.monospaced))
//            .multilineTextAlignment(.center)
//            .baselineOffset(9)
//            .kerning(3)
//            .fontDesign(.monospaced)
            .multilineTextAlignment(.trailing)
            . bold()
            .strikethrough(true, color: Color.red)
            //.foregroundStyle(.black)
            //.foregroundColor(Color("Color"))
            .foregroundColor(Color.blue)
            .shadow(color: Color("Color").opacity(0.5), radius: 5)
            .monospaced()
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .frame(width: 200, height: 500)
            .minimumScaleFactor(0.5)
        
    }
}

#Preview {
    TextFile()
}
