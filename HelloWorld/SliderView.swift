//
//  SliderView.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 08/01/24.
//

import SwiftUI

struct SliderView: View {
    @State var sliderValue : Double = 10
    var body: some View {
        VStack {
            Text("Value")
            //Text(".\(sliderValue)")
            Text(String(format: "%.1f", sliderValue))
            //Slider(value: $sliderValue)
                .accentColor(.red)
            //Slider(value: $sliderValue, in: 0...100)
            Slider(value: $sliderValue, in: 1...10, step: 1)
        }
    }
}

#Preview {
    SliderView()
}
