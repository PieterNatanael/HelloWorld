//
//  NavigationView.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 29/12/23.
//

import SwiftUI

struct NavigationView1: View {
    var body: some View {
        NavigationView{
            ScrollView{
                NavigationLink("Contoh", destination: mySecondPage())
                Text("Contoh")
                Text("Contoh")
                Text("Contoh")
            }
            .navigationTitle("This is it")
            .navigationBarTitleDisplayMode(.automatic)
           // .navigationBarHidden(true)
            .navigationBarItems(
                
                leading:
                    HStack{Image(systemName: "person")
                        Image(systemName: "person")
                    }
                    ,
                trailing: NavigationLink(destination: mySecondPage(), label: {Image(systemName: "xmark")}))
        }
        .accentColor(.red)
    }
}



struct mySecondPage : View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack{
            Color.green.ignoresSafeArea()
                .navigationTitle("Second Screen")
                .navigationBarHidden(true)
            
            VStack{
                
                Button("back button") {
                    presentationMode.wrappedValue.dismiss()
                }

                NavigationLink("another screen", destination: Text("3rd screen"))

                
            }
            .foregroundColor(.white)
                .font(.largeTitle)
            
        }
    }
}

#Preview {
    NavigationView1()
}
