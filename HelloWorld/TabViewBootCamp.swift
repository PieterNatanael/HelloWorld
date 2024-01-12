//
//  TabViewBootCamp.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 08/01/24.
//

import SwiftUI

struct TabViewBootCamp: View {
    var body: some View {
        TabView {
            Text("a")
                .badge(2)
                .tabItem {
                    Label("Received1", systemImage: "tray.and.arrow.down.fill")
                }
            Text("a")
                .tabItem {
                    Label("Sent", systemImage: "tray.and.arrow.up.fill")
                }
            Text("a")
                .badge("!")
                .tabItem {
                    Label("Account", systemImage: "person.crop.circle.fill")
                }
        }
        
    }
}

#Preview {
    TabViewBootCamp()
}
