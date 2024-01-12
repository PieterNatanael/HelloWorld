//
//  Grids.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 22/12/23.
//https://www.youtube.com/watch?v=vHvb7LH8VuE for more learning


import SwiftUI

let kolom : [GridItem] = [
    GridItem(.fixed(50), spacing: nil, alignment: nil),
    GridItem(.fixed(50), spacing: nil, alignment: nil),
    GridItem(.fixed(50), spacing: nil, alignment: nil),
    GridItem(.fixed(50), spacing: nil, alignment: nil), GridItem(.fixed(50), spacing: nil, alignment: nil)
    
]

struct Grids: View {
    var body: some View {
       
        LazyVGrid(columns: kolom){
            ForEach(0..<50) { index in
                Circle()
                    .frame(height: 50)
            }
     
        }
    }
}

#Preview {
    Grids()
}
