//
//  ifLetGuardView.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 15/01/24.
//masih kurang else dan guard https://youtu.be/wmQIl0O9HBY?si=RU-5Xklg_3vGVPYS

import SwiftUI

struct ifLetGuardView: View {
    @State var letText : String? = nil
    @State var isLoading : Bool = false
    @State var toggleTriggered : Bool = false
    var body: some View {
        NavigationView {
            VStack {
                
                if let text = letText{
                    Text(text)
                        .font(.title)
                }
                Text("here we practice safe coding")
                
                Button(" button") {
                    toggleTriggered.toggle()
                }
                
                if toggleTriggered == true {
                 Text("totggle triggered")
                    Image(systemName: "star")
                } else {Text("")}
                
//                else {Text ("toggle not triggered")
//                Image(systemName: "circle.fill")
//                }
                
               
             
                Spacer()
                
                if isLoading {
                    ProgressView()
                }
            }
            .navigationTitle("Safe coding")
            .onAppear{
                loadData()
            }
        }
    }
    func loadData() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now()+3) {
            letText = "display new data"
            isLoading = false
        }
        
    }
}

#Preview {
    ifLetGuardView()
}
