//
//  StateView.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 23/12/23.
//

import SwiftUI

struct StateView: View {
    
    @State var backgroundColor : Color = .green
    @State var myTitle : String = "My Title"
    @State var hitung : Int = 5
    @State var fontSaya : Font = .body
    
    var body: some View {
        ZStack{
            //background
            //Color.red
            backgroundColor
                .ignoresSafeArea(.all)
            
            //content
            VStack{
                Text(myTitle)
                    .font(fontSaya)
                
                Text("Text 2\(hitung)")
                
                
                HStack{
                    
                    Button("Button 1") {
                        backgroundColor = .pink
                        myTitle = "Button 1 is pressed"
                        hitung = hitung + 1
                        fontSaya = .largeTitle.monospaced()
                    }
                    
                    
                    Button("Button 2") {
                        backgroundColor = .gray
                        myTitle = "Button 2 is pressed"
                        hitung -= 1
                        fontSaya = .body
                    }
                    
                }
                
          
                
            }
            .foregroundColor(.white)
            
        }
        
        
    }
}

#Preview {
    StateView()
}
