//
//  PopOverView.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 29/12/23.
//
//sheets
//animations
//transition


import SwiftUI

struct PopOverView: View {
    
    @State var popupScreen : Bool = false
    
    var body: some View {
        ZStack{
            //Background
            Color.red
                .ignoresSafeArea()
            //content
            VStack {
                Button("Button") {
                    popupScreen.toggle()
                }
                .font(.largeTitle)
                Spacer()
            }
            
            
            
            //method 1 sheet
            //        .sheet(isPresented: $popupScreen, content: {
            //            newScreen()
            //        })
            //method 2 transition (try this whenever possible becaus its dynamic)
            //        ZStack{
            //            if popupScreen {
            //                newScreen(popupScreen: $popupScreen)
            //                    .padding(.top, 100)
            //                    .transition(.move(edge: .bottom))
            //                    .animation(.spring())
            //            }
            //
            //        }
            
            //method 3 animation
            
            newScreen(popupScreen : $popupScreen)
                .padding(.top, 100)
                .offset(y: popupScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring())
        }
    }
}
struct newScreen : View {
    
    @Environment(\.presentationMode) var presentatiomode
    @Binding var popupScreen : Bool
    
    
    var body: some View {
        ZStack(alignment: .topLeading){
            //Background
            Color.purple
                .ignoresSafeArea()
            
            //content
            Button(action: {
                popupScreen.toggle()
                //presentatiomode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .font(.largeTitle)
                    .foregroundColor(.white)
            })
        }
    }
}
#Preview {
    PopOverView()
    //newScreen()
}
