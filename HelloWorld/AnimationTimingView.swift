//
//  AnimationTimingView.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 27/12/23.
//

import SwiftUI

struct AnimationTimingView: View {
    
    @State var isAnimating : Bool = false
    let timing : Double = 10.0
    var body: some View {
        VStack{
            Button("Button") {
                isAnimating.toggle()
            }
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: isAnimating ? 400 : 100,
                       height: 200)
                .animation(Animation.spring(duration: 5, bounce: 0.2, blendDuration: 0.2))
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: isAnimating ? 400 : 100,
                       height: 200)
                .animation(Animation.linear(duration: timing))
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: isAnimating ? 400 : 100,
                       height: 200)
                .animation(Animation.easeInOut(duration: timing))
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: isAnimating ? 400 : 100,
                       height: 200)
                .animation(Animation.easeOut(duration: timing))
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: isAnimating ? 400 : 100,
                       height: 200)
                .animation(Animation.default)
        }
    }
}

#Preview {
    AnimationTimingView()
}
