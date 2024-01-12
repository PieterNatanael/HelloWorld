//
//  ForEachView.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 21/12/23.
//

import SwiftUI

struct ForEachView: View {
    var body: some View {
        
        let data: [String] = ["hello", "Yes", "no"]
        let greeting : String = "hello"
        let angka : Int = 33
        
        VStack{
            ForEach(data.indices) { index in
              
                HStack{
                    Circle()
                        .frame(width: 20, height: 20)
               Text("no \(data[index]) and \(index) \(angka) and \(greeting)")
                }
            }
            
        }
    }}

#Preview {
    ForEachView()
}
