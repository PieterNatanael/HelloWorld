//
//  TernaryView.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 27/12/23.
//

import SwiftUI

struct TernaryView: View {
    
    @State var ifStaringState : Bool = false
    
    var body: some View {
        VStack{
            
            Button("Button\(ifStaringState.description)") {
                ifStaringState.toggle()
            }
            
            Text(ifStaringState ? "yes" : "NO")
                .font(.largeTitle)
                .foregroundStyle(Color.white)
                .monospaced()
                .background(Color.red)
                .padding()
            
            RoundedRectangle(cornerRadius: ifStaringState ? 25: 0)
            //ternary
                .fill(ifStaringState ? Color.red : Color.blue)
                .frame(width: ifStaringState ? 300 : 100,
                       height: ifStaringState ? 100 : 200)
        }
        
        Spacer()
    }
}

#Preview {
    TernaryView()
}
