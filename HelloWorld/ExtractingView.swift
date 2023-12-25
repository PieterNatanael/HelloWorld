//
//  ExtractingView.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 23/12/23.
//

import SwiftUI

struct ExtractingView: View {
    
    @State var myColor : Color = Color.pink
    
    var body: some View {
        ZStack{
            //background
            //Color.yellow.ignoresSafeArea()
            myColor.ignoresSafeArea()
            
                
            //content
            kontenLayer
      
            
        }
    }
    
    var kontenLayer: some View {
        
        VStack{
            Text("Title")
                .font(.largeTitle)
            
            Button(action: {
                pencetTombol()
            },
                   label: {
                Text("Pressed me")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(Color.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(25)
            })
        }
        
        
    }
    
    func pencetTombol(){
        myColor = Color.yellow
    }
}

#Preview {
    ExtractingView()
}
