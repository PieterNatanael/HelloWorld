//
//  ViewModelView.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 17/01/24.
//

import SwiftUI

struct fruitModel : Identifiable {
    let id : String = UUID().uuidString
    let count : Int
    let name : String
}

class FruitViewModel : ObservableObject{
    @Published var fruitArray: [fruitModel] = []
    @Published var isLoading : Bool = false
    
    //not using on appear but init.
    init() {
        getFruit()
    }
    
    func getFruit(){
        let fruit1 = fruitModel(count: 5, name: "Banana")
        let fruit2 = fruitModel(count: 10, name: "pear")
        let fruit3 = fruitModel(count: 7, name: "Avocado")
        
        //is loading code
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now()+3){
            
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }
        

    }
    func deleteFruit(index : IndexSet){
        fruitArray.remove(atOffsets: index)
    }
}

struct ViewModelView: View {
    //use @Stateobject for creation / init
    //use observavleObject for subview
   @StateObject var fruitViewModel : FruitViewModel = FruitViewModel()
//    @State var fruitArray : [fruitModel] = [
//    fruitModel(count: 5, name: "Apple")
//    ]
    var body: some View {
        NavigationView {
            List {
                
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack{
                            Text("\(fruit.count)")
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                        
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                    
                }
                
            }
            .listStyle(.grouped)
            .navigationTitle("fruits")
//            .onAppear{
//                fruitViewModel.getFruit()
//            }
        }
    }

}

#Preview {
    ViewModelView()
}
