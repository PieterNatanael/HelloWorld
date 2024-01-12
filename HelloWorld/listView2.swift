//
//  listView2.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 04/01/24.
//

import SwiftUI

struct listView2: View {
    @State var fruits : [String] = [
    "Apple", "Orange", "Pear", "peach"]
    
    @State var veggies : [String] = [
    "Tomato", "beans", "Lentils"]
    var body: some View {
        
        NavigationView {
            List{
                Section(
                    header: 
                        HStack {
                            Text("Fruits")
                            Image(systemName: "flame.fill")
                        }
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.red)
                
                ) {
                    ForEach(fruits, id: \.self) { fruit in Text(fruit.uppercased())
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                            .padding(.vertical)
                    }
                        
                            .onDelete(perform: delete )
                            .onMove(perform: onMove)
                            .listRowBackground(Color.pink)
                            
                                    
                                    
                            
                        
                        
                        
                    }
                
                Section(
                    header: 
                        HStack {
                            Text("Veggies")
                            Image(systemName: "flame.fill")
                        }
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(Color.red)
                
                )
                
                {
                    ForEach(veggies, id: \.self) { veggies in Text(veggies.uppercased())
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.blue)
                    }}
                
            }
            .accentColor(.purple)
            //.listStyle(SidebarListStyle())
            .navigationTitle("Grocery List")
            .navigationBarItems(leading: EditButton(),
                                trailing: addButton
            )
        }
     
    }
    
    var addButton : some View {
        Button("Add", action: {
add()
})
    }
    
    func delete(indexSet : IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    func onMove(indices : IndexSet, newOffset : Int){
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    func add(){
        fruits.append("Coconut")
    }
}

#Preview {
    listView2()
}
