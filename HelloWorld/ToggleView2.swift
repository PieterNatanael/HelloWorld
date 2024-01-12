//
//  ToggleView2.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 04/01/24.
//

import SwiftUI

struct ToggleView2: View {
    
    @State var toggleIsOn : Bool = false
    var body: some View {
        VStack {
            
            HStack{
                Text("Title")
                Text(toggleIsOn ? "off line" : "On line")
            }
            .padding()
            Toggle(isOn: $toggleIsOn,
                   label: {
                Text("Label")
            })
            .padding(.horizontal, 100)
        }
        Spacer()
    }
}

#Preview {
    ToggleView2()
}
