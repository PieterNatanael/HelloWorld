//
//  EnvironmentObjectView.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 18/01/24.
//

import SwiftUI

class EnvironmentViewModel : ObservableObject {
    @Published var dataArray : [String] = []
    
    init(){
        getData()
    }
    func getData(){
        self.dataArray.append(contentsOf: ["Iphone", "Ipad", "mac"])
    }
}

struct EnvironmentObjectView: View {
    @StateObject var viewModel : EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in 
                    NavigationLink(destination: detailView(selectedItem: item)
                    
                    ) {
                        Text(item)
                    }
                     }
            }
            .navigationTitle("iOS ")
        }
        .environmentObject(viewModel)
    }
}

struct detailView : View {
    
    let selectedItem : String
    //because of .environmentObject(viewModel)
//    @ObservedObject var viewModel : EnvironmentViewModel
    
    var body: some View {
        ZStack{
            //background
            Color.orange.ignoresSafeArea()
            //foreground
            NavigationLink(destination: finalView()) {
                Text(selectedItem)
                    .font(.title)
                    .foregroundStyle(Color.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.white)
                    .cornerRadius(25)
            }
           
        }
    }
}

struct finalView : View {
    @EnvironmentObject var viewModel : EnvironmentViewModel
    
    var body: some View{
        ZStack{
            //background
            LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), 
                           startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
            //foreground
            ScrollView{
                VStack{
                    ForEach(viewModel.dataArray, id: \.self) { item in
                        Text(item)
                    }
                }
            }
        }
    }
}

#Preview {
    EnvironmentObjectView()
}
