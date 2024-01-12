//
//  AnimationView.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 27/12/23.
//

import SwiftUI

struct AnimationView: View {
    
    @State var animationV1 : Bool = false
    var body: some View {
        
        VStack{
            Button("button") {
                //animation make transition smooth
                //withAnimation(.default)
                //withAnimation(Animation.default.delay(2.0))
                //withAnimation(Animation.default.repeatCount(5, autoreverses: false))
                withAnimation(Animation.default.repeatForever(autoreverses: true))
                {
                    animationV1.toggle()
                }
                
                
            }
            Rectangle()
                
                .fill(animationV1 ?  Color.green : Color.red)
                .frame(width: animationV1 ? 400 : 100,
                       height: animationV1 ? 400 : 100)
                .cornerRadius(animationV1 ? 50 : 0)
                .rotationEffect(Angle(degrees: animationV1 ? 350 : 0))
                .offset(y: animationV1 ? 300 : 0)
                
        }
    }
}

#Preview {
    AnimationView()
}
