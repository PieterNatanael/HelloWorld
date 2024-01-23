//
//  onAppearView.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 13/01/24.
//

import SwiftUI

struct onAppearView: View {
    @State var onAppear : String = "start text"
    @State var count : Int = 0
    var body: some View {
        NavigationView {
            ScrollView {
                Text(onAppear)
                LazyVStack{
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(height: 200)
                            .padding()
                            .onAppear{
                                count += 1
                            }
                
                    }
                }
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5){
                    onAppear = "next text"}
            })
            .navigationTitle("the title : .\(count)")
        }
     
    }
}

#Preview {
    onAppearView()
}
