//
//  Check2.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 22/12/23.
//

import SwiftUI


let tiga  : String = "Tiga"
let tigaAngka : Int = 3

struct ScrollView2: View {
    var body: some View {
        ScrollView{
            VStack{
                ForEach(0..<30) { index in
                    ScrollView(.horizontal, showsIndicators: false, content:
                                {
                        HStack{
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                    .overlay(
                                    
                                        Text("3\(tigaAngka)")
                                        .font(.largeTitle)
                                        .bold()
                                        .foregroundColor(.white)
                                    
                                
                                    )
                            }
                            }
                          
                    })}
                
            }
        }
    }
}

#Preview {
    ScrollView2()
}
