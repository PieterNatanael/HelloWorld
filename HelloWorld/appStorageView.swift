//
//  appStorageView.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 19/01/24.
//

import SwiftUI

struct appStorageView: View {
    
    //no need becaus @AppStorage
//    @State var currentName : String?
    @AppStorage("name") var currentName : String?
    
    var body: some View {
        VStack(spacing: 20){
            Text(currentName ?? "add name here")
            
            if let name = currentName {
                Text(name)
            }
            
            Button("button") {
                let name : String = "Nick"
                currentName = name
                //no need becaus @AppStorage
//                UserDefaults.standard.setValue(name, forKey: "name")
            }
        }
        //no need becaus @AppStorage
//        .onAppear{
//            currentName = UserDefaults.standard.string(forKey: "name")
//        }
    }
}

#Preview {
    appStorageView()
}
