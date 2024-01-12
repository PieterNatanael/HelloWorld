//
//  ConditionalView.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 25/12/23.
//

import SwiftUI

struct ConditionalView: View {
    @State var showCircle : Bool = false
    @State var showRectangle : Bool = false
    @State var isLoading : Bool = false
    
    var body: some View {
        VStack(spacing:20){
            Button("Loading \(isLoading.description)") {
                
                isLoading.toggle()
            }
            if isLoading{
                ProgressView()
            }
            else{
                Circle()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            }
            
            Button("Button \(showCircle.description)") {
                showCircle.toggle()
                
            }
            
            Button("Button\(showRectangle.description)") {
                showRectangle.toggle()
                
            }
            
            //bentuk variasi nya
            //            if showCircle == true {
            //                Circle()
            //                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            
            //            if showCircle == false {
            //                Circle()
            //                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            
            //            if !showCircle {
            //                Circle()
            //                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            if showCircle {
                Circle()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            }
            
            if showRectangle {
                Rectangle()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            }
            ; if !showCircle || showRectangle {
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height :100)
            }
                
            
//            ; if showCircle && !showRectangle {
//                RoundedRectangle(cornerRadius: 25.0)
//                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height :100)
//            }
//                
                //            else if showRectangle {
                //                Rectangle()
                //                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                //            } else {
                //                RoundedRectangle(cornerRadius: 25.0)
                //                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height :100)
                //            }}
                
                
            }
    }
}

#Preview {
    ConditionalView()
}
