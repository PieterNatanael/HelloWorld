//
//  ContentView.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 15/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world! its me")
                .font(.title)
                .fontWeight(.black)
                .foregroundColor(Color.gray)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
