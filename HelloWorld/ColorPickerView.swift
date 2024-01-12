//
//  ColorPickerView.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 08/01/24.
//

import SwiftUI

struct ColorPickerView: View {
    @State var bgColor : Color = .green
    var body: some View {
        ZStack{
            //bg
            bgColor
                .ignoresSafeArea()
            
            //content
//            ColorPicker(selection: $bgColor, supportsOpacity: true, label: {
//                Text("ColorPicker")
//                    .padding()
//                    .background(Color.black)
//                    .cornerRadius(10)
//                    .font(.largeTitle)
//                    .foregroundColor(.white)
//                    .padding(50)
//            })
            
            ColorPicker("Choose Your Color", selection: $bgColor, supportsOpacity: true)
                .padding()
                .background(Color.black)
                .cornerRadius(10)
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding(50)
            
        }
    }
}

#Preview {
    ColorPickerView()
}
