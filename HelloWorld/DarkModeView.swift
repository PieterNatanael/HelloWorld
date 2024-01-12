//
//  DarkModeView.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 11/01/24.
//

import SwiftUI

struct DarkModeView: View {
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
                    
                }
            }
            .navigationTitle("Dark Mode View")
        }
    }
}

#Preview {
    Group {
        DarkModeView()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        
        DarkModeView()
            .preferredColorScheme(.light)
    }
}
