//
//  ContextMenuView.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 04/01/24.
//

import SwiftUI

struct ContextMenuView: View {
    @State var backgroundColor : Color = Color.red
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20.0){
            Image(systemName: "star")
                .font(.title)
            Text("We are 33")
                .font(.headline)
            Text("username are 33")
                .font(.headline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundColor.cornerRadius(30) )
        .contextMenu(menuItems: {
            Button(action: {
                backgroundColor = .yellow
            }, label: {
                Label("Share", systemImage: "Flame.fill")
            })
            Button(action: {
                backgroundColor = .blue
            }, label: {
                Text("Report")
            })
            Button(action: {
                backgroundColor = .green
            }, label: {
                HStack {
                    Text("Like")
                    Image(systemName: "flame")
                }
            })
        })
    }
}

#Preview {
    ContextMenuView()
}
