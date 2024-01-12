//
//  TextFieldView.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 04/01/24.
//

import SwiftUI

struct TextFieldView: View {
    @State var textViewText : String = ""
    @State var dataArray : [String] = []
    var body: some View {
        
        NavigationView {
            VStack {
                TextField("heres the text", text: $textViewText)
                    //.textFieldStyle(.roundedBorder)
                    .padding()
                .background(Color.gray.opacity(0.3))
                
                Button(action: {
                    if ifTextGood(){
                        safeText()
                    }
                    
                }, label: {
                    Text("Button")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(ifTextGood() ? Color.blue : Color.black)
                    .foregroundColor(Color.white)
                }
                                )
                .disabled(!ifTextGood())
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("Text field bootcamp")
        }
        
    }
    func ifTextGood() -> Bool {
        if textViewText.count >= 3 {
            return true
        }
        return false
    }
    
    func safeText(){
        dataArray.append(textViewText)
        textViewText = ""
    }
}

#Preview {
    TextFieldView()
}
