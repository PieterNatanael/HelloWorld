//
//  onBoardingView.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 22/01/24.
//

import SwiftUI



struct onBoardingView: View {
    //onboarding state
    //welcome screen
    //add name
    //add age
    //add gender
    
    @State var onBoardingState : Int = 0
    @State var name : String = ""
    @State var age : Double = 50
    @State var gender : String = ""
    var body: some View {
        ZStack{
            //content
            ZStack{
                switch onBoardingState {
                case 0: welcomeSection
                case 1: addNameSection
                case 2: addAgeSection
                case 3: addGenderSection
                default: RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.green)
                    
                }
                
            }
            
            //button
            VStack{
                Spacer()
                bottomButton
              
            }
            .padding(30)
        }
    }

}

#Preview {
    onBoardingView()
}

//mark : COMPONENTS

extension onBoardingView {
    private var bottomButton : some View {
        Text("Button")
            .font(.title)
            .foregroundStyle(Color.white)
            .frame(height: 50)
            .frame(maxWidth: .infinity)
            .background(Color.orange)
            .cornerRadius(10)
            .onTapGesture {
                handleNextButton()
            }
        
    }
    private var welcomeSection : some View {
        VStack(spacing: 40) {
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .foregroundColor(.blue)
            Text("Find Your Match")
                .font(.largeTitle)
            Text("this is tutorial of how use appstorage and other swiftui technique")
            Spacer()
            Spacer()
            
        }
        .padding(20)
    }
    private var addNameSection : some View {
        VStack(spacing: 40) {
            Spacer()
          
            Text("Whats your name?")
                .font(.largeTitle)
            TextField("add your name", text: $name)
           
            Spacer()
            Spacer()
            
        }
        .padding(20)
    }
    private var addAgeSection : some View {
        VStack{
            Spacer()
            
            Text("Whats your age?")
                .font(.largeTitle)
            
            Text(".\(String(format: "%.0f", age))")
                .font(.title)
                .fontWeight(.semibold)
            Slider(value: $age, in: 18...100, step: 1)
            Spacer()
            Spacer()
        }
    }
    
    private var addGenderSection : some View {
        VStack{
            Spacer()
            
            Text("Whats your gender?")
                .font(.largeTitle)
            
            Picker(selection: $gender) {
                Text("male").tag("male")
                Text("female").tag("female")
                Text("non binary").tag("non binary")
               
            } label: {
                Text(gender.count > 1 ? gender : "select a gender")
            }

            Spacer()
            Spacer()
        }
    }
    
}

extension onBoardingView{
    func handleNextButton() {
        withAnimation(.spring()){
            onBoardingState += 1
        }
    }
}
