//
//  Grids2.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 22/12/23.
//

import SwiftUI

let kolom1 : [GridItem] = [
    GridItem(.flexible(), spacing: nil, alignment: nil),
    GridItem(.flexible(), spacing: nil, alignment: nil),
    GridItem(.flexible(), spacing: nil, alignment: nil),

]

struct Grids2: View {
    var body: some View {
        ScrollView{
            
            LazyHGrid(rows: /*@START_MENU_TOKEN@*/[GridItem(.fixed(20))]/*@END_MENU_TOKEN@*/,
                      alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,
                      spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/,
                      pinnedViews: /*@START_MENU_TOKEN@*/[]/*@END_MENU_TOKEN@*/,
                      content: {
                /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                
            })
            Rectangle()
                .frame(width: 400, height: 400)
                .foregroundColor(.white)
            
            LazyVGrid(columns: kolom1) {
                ForEach(0..<100) { index in
                    Rectangle()
                        .frame(height: 150)
                }
            }
        }
       
    }
}

#Preview {
    Grids2()
}
