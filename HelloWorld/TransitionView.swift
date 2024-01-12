//
//  TransitionView.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 28/12/23.
//

import SwiftUI

struct TransitionView: View {
    
    @State var showOp : Bool = false
    var body: some View {
        ZStack{
            
            VStack{
                Button("Button") {
                    showOp.toggle()
                }
                
                Spacer()
                
                if showOp {
                    
                    RoundedRectangle(cornerRadius: 30)
                        .frame(height: 400)
//                        .transition(.slide)
                        .transition(.move(edge: .bottom))
                        .animation(.spring)
                    
                }
               
                
            }
        }
    }
}

#Preview {
    TransitionView()
}
