//
//  StepperView.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 08/01/24.
//

import SwiftUI

struct StepperView: View {
    
    @State var stepperValue : Int = 10
    @State var widhtIncrement : CGFloat = 10
    var body: some View {
        VStack {
            Stepper("Stepper : \(stepperValue)", value: $stepperValue)
                .padding(10)
            .font(.largeTitle)
            
            Rectangle()
                .frame(width: 100 + widhtIncrement, height: 100)
            
            Stepper("Stepper 2") {
                incrementWidth(amount: 20)
            } onDecrement: {
                incrementWidth(amount: -20)
            }

        }
       
    }
    func incrementWidth(amount : CGFloat){
        withAnimation(.easeInOut){
            widhtIncrement += amount
        }
      
    }
}

#Preview {
    StepperView()
}
