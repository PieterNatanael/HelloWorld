//
//  Init&Enum.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 21/12/23.
//

import SwiftUI

struct Init_Enum: View {
    
    let backgroundColor : Color
    let count : Int
    let title : String
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apple{
            self.title="Apple"
            self.backgroundColor = .red}
        else {
            self.title = "Orange"
            self.backgroundColor = .orange
         
            
        }
}
    
    enum Fruit{
        case apple
        case orange
    }
    
    var body: some View {
        VStack(spacing:12){
            
            Text("\(count)")
                .font(.largeTitle)
                .foregroundStyle(Color.white)
                .underline()
            Text(title)
                .font(.title)
                .foregroundStyle(Color.white)
            
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(15)
        
    }
}

#Preview {
    HStack {
        Init_Enum(count: 5, fruit: .apple)
        Init_Enum(count: 10, fruit: .orange)
    }
}
