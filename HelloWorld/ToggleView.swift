//
//  ToggleView.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 25/12/23.
//

import SwiftUI

struct ToggleView: View {
    
    @State var toggleIsOn : Bool = false
    
    var body: some View {
        
        HStack{
            Text("Status : ")
            Text(toggleIsOn ? "Online" : "offline")
        }
        .font(.title)
        
        
        Toggle(isOn: $toggleIsOn,
               label: {
            Text("Label")
        })
        .toggleStyle(SwitchToggleStyle(tint: .red))
    
        Spacer()
        
    }
       // .padding(.horizontal, 20)
}

#Preview {
    ToggleView()
}
