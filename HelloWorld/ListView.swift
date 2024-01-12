//
//  ListView.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 01/01/24.
//
// belum selesai, link https://youtu.be/tkOnXG-sNks?si=ZAkQt2RY1RPeO_8D

import SwiftUI

struct ListView: View {
    @State var Fruits : [String] = ["Apple", "Orange", "Banana", "Pear"]
    
    var body: some View {
        
        NavigationView{
            List{
                
                Section(
                    header : Text("Fruits")) {
                        ForEach(Fruits , id:\.self ) {fruit in Text(fruit.capitalized)
                }
                    .onDelete(perform:delete)
                    .onMove(perform: { indices, newOffset in
                        Fruits.move(fromOffsets: indices, toOffset: newOffset)
                    })
                   
                }
                
            }
            .navigationTitle("Grocery List")
            .navigationBarItems(leading : EditButton() )
            
        }
       
        
    }
    func delete(indexSet : IndexSet){
        Fruits.remove(atOffsets: indexSet)
    }
}

#Preview {
    ListView()
}
