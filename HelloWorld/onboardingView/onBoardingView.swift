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
    @State var alertTitle : String = ""
    @State var showAlert : Bool = false
    
    //app storage
    @AppStorage("name") var currentUserName :String?
    @AppStorage("age") var currentUserAge : Int?
    @AppStorage("gender") var currentUserGender : String?
    @AppStorage("signed-In") var currentUserSignIn : Bool = false
    
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
        .alert(isPresented: $showAlert, content: {
            return Alert(title: Text(alertTitle))
        })
    }

}

#Preview {
    onBoardingView()
}

//mark : COMPONENTS

extension onBoardingView {
    private var bottomButton : some View {
        Text(onBoardingState == 0 ? "sign up" :
                onBoardingState == 3 ? "Finish" : "next"
        )
            .font(.title)
            .foregroundStyle(Color.blue)
            .frame(height: 50)
            .frame(maxWidth: .infinity)
            .background(Color.white)
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
                .foregroundColor(.white)
            Text("Find Your Match")
                .font(.largeTitle)
            Text("this is tutorial of how use appstorage and other swiftui technique")
            Spacer()
            Spacer()
            
        }
        .foregroundColor(.white)
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
        .foregroundColor(.white)
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
        .foregroundColor(.white)
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
        .foregroundColor(.white)
    }
    
}

extension onBoardingView{
    func handleNextButton() {
        
        //inputs
        switch onBoardingState {
        case 1:
            guard name.count >= 3
            else {
                showAlert(title: "you need more then 3 character")
                return
            }
        case 3: guard gender.count > 1 else {
            showAlert(title: "choose your gender")
            return
        }
            
        default:
            break
        }
        
        //go to next screen
        if onBoardingState == 3 {
        signIn()
            //sign in
        } else {
            withAnimation(.spring()){
                onBoardingState += 1
            }
        }
        
        func signIn(){
            currentUserName = name
            currentUserAge = Int(age)
            currentUserGender = gender
            withAnimation(.spring()){
                currentUserSignIn = true
            }
          
        }
    }
    func showAlert(title : String) {
        alertTitle = title
        showAlert.toggle()
    }
}
