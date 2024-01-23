//
//  DarkModeView.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 11/01/24.
//

import SwiftUI

struct DarkModeView: View {
    
    @Environment (\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(spacing :20){
                    Text("This is primary color")
                        .foregroundColor(.primary)
                    Text("This is secondary color")
                        .foregroundStyle(.secondary)
                    Text("This is Black color")
                        .foregroundStyle(.black)
                    Text("this is White color 1")
                        .foregroundStyle(.white)
                    //globally adaptive color
                    Text("This is adaptive color")
                        .foregroundStyle(Color("AdaptiveColor"))
                    //locally adaptive color
                    Text("Locally adaptive color")
                        .foregroundStyle(colorScheme == .dark ? .green : .red)
                    
                }
            }
            .navigationTitle("Dark Mode View")
        }
    }
}

#Preview {

        DarkModeView()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        
    }
