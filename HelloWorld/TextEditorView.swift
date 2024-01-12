//
//  TextEditorView.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 04/01/24.
//

import SwiftUI

struct TextEditorView: View {
    
    @State var textEditor : String = "The Starting of Text"
    @State var saveText : String = ""
    var body: some View {
        NavigationView{
            VStack{
                TextEditor(text: $textEditor)
                    .frame(height: 250)
                    .colorMultiply(Color(#colorLiteral(red: 0.7540688515, green: 0.7540867925, blue: 0.7540771365, alpha: 1)))
                Button(action: {
                    saveText = textEditor
                }, label: {
                    Text("Save")
                        .font(.title)
                        .foregroundStyle(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                })
                Text(saveText)
                Spacer()
            }
            .padding()
            .background(Color.white)
            
            .navigationTitle("TextEditor")
        }
   
    }
       
}

#Preview {
    TextEditorView()
}
