//
//  DocumentationView.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 13/01/24.
//Maekup and documentation usefull if we work with other developer

import SwiftUI

struct DocumentationView: View {
    // MARK : PROPERTIES
    
    @State var data : [String] = [
    "apple", "orange", "pear"]
    @State var showAlert : Bool = false
    
    // MARK : BODY
    
    //Pieter things to do:
    /*
    working copy ; things to do
    1)fix title
    2)fix another
    */
    
    var body: some View {
        NavigationView {// START : NAV
            ZStack {
                //background
                Color.red.ignoresSafeArea()
                //foreground
                foregroundLayer
                .navigationTitle("Documentation")
                .navigationBarItems(trailing:
                                        Button("alert", action: {
                    showAlert.toggle()
                    
                })
                )
                .alert(isPresented: $showAlert, content: {
                    getAlert(text: "this is alert")
            })
            }
        } //END : NAV
    }
    ///  this is foregroundLayer that hold scrollview
    private var foregroundLayer : some View {
        ScrollView {//START : SCROLLV
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            ForEach(data, id: \.self) { name in
                Text(name)
                    .font(.headline)
            }
        }//END : SCROLLV
    }
    
    // MARK : FUNCTION
    /// this is alert
    ///
    ///this is where the disccusion are
    ///```
    ///  func getAlert(text : "hi") -> Alert (title : Text("hi")
    ///```
    /// - Warning : there is no additional message
    /// - Parameter text: text is title of alert
    /// - Returns: the title
        func getAlert(text : String) -> Alert {
            return Alert (title : Text(text) )
        }
    }
    

    
    // MARK : PREVIEW

#Preview {
    DocumentationView()
}
