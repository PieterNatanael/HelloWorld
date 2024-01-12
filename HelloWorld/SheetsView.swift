//
//  SheetsView.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 29/12/23.
//

import SwiftUI

struct SheetsView: View {
    @State var showSheet : Bool = false
    var body: some View {
        ZStack{
            //BG color
            Color.green
                .ignoresSafeArea()
            //content
            Button(action: {
                showSheet.toggle()
            },
                   label: {
                Text("Button")
                    .font(.largeTitle)
                    .foregroundStyle(Color.green)
                    .padding(20)
                    .background(Color.white.cornerRadius(25))
            })
            .fullScreenCover(isPresented: $showSheet, content: {
                //do not add conditional logic
                secondView()
            })
//            .sheet(isPresented: $showSheet, content: {
//                secondView()
////                Text("Hello there")
////                    .font(.largeTitle)
//            })
        }
            }
}

struct secondView : View {
    //no compeletion need to remember
    @Environment(\.presentationMode) var presentationmode
    
    var body: some View {
        ZStack(alignment: .topLeading){
            //BG color
            Color.red
                .ignoresSafeArea(.all)
            //content
            Button(action: {
                presentationmode.wrappedValue.dismiss()
            },
                   label: {
                Image(systemName: "xmark")
                    .font(.largeTitle)
                    .foregroundStyle(Color.white)
                    .padding(20)
//                    .background(Color.white.cornerRadius(25))
            })
        
        }
    }
}

#Preview {
    SheetsView()
    //secondView()
}
