//
//  ExtractionSubView.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 23/12/23.
//

import SwiftUI

struct ExtractionSubView: View {
    var body: some View {
        
        ZStack{
            
            //background
            Color(.blue)
                 .ignoresSafeArea()
             
             //content
            kontenLayer
            }
           
        }
 
    }
    
    var kontenLayer : some View {
        HStack{
            MyItem(title: "Apple", count: 3, color: .red)
            MyItem(title: "Orange", count: 3, color: .orange)
            MyItem(title: "Bananas", count: 3, color: .yellow)
        
    }
    
}

#Preview {
    ExtractionSubView()
}

struct MyItem: View {
    
    let title : String
    let count : Int
    let color : Color
    
    var body: some View {
        VStack{
            
            Text("\(count)")
            
            Text(title)
        }
        .padding()
        .background(color)
        .foregroundColor(.white)
        .cornerRadius(25)
    }
}
