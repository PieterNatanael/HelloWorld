//
//  SafeAreaView.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 23/12/23.
//

import SwiftUI

struct SafeAreaView: View {
    var body: some View {
        
   
        
        ZStack {
            
            Color.blue
                //.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .ignoresSafeArea()
            ScrollView{
                
                Text("Progress 1")
                    .font(.largeTitle)
                    .foregroundStyle(Color.white)
                
                VStack{
                    ForEach(0..<20) { index in
                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                            .fill(Color.white)
                            .frame(height: 150)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            .padding()
                    }
                }
            }
        }
        
//        ZStack {
//            //background
//            Color.blue
//                .edgesIgnoringSafeArea(.all)
//            
//            //foreground
//            VStack{
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                    .foregroundStyle(.white)
//                    .font(.title)
//                Spacer()
//            }
//         
//                .frame(maxWidth: .infinity, maxHeight: .infinity)
//            //.background(Color.red)
//        }
    }
}

#Preview {
    SafeAreaView()
}
