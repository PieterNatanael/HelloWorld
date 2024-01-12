//
//  AlertView.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 03/01/24.
//

import SwiftUI

struct AlertView: View {
    
    @State var showALert : Bool = false
    @State var backgroundColor : Color = Color.yellow
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            Button("Button")
            {
                showALert.toggle()
            }
            .alert(isPresented: $showALert, content: {
                getAlert()
                //Alert(title: Text("there is error"))
        })
        }
        .font(.largeTitle)
        .foregroundColor(.white)
        
    }
    
    func getAlert() -> Alert{
        return Alert(
            title: Text("Error"),
            message: Text("We got error"),
            primaryButton: .destructive(Text("Change BG"), action: {
                backgroundColor = Color.red
            }),
            secondaryButton: .cancel(Text("cancel")))
        
    }
    
    
}

#Preview {
    AlertView()
}
