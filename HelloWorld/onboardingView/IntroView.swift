//
//  IntroView.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 20/01/24.
//

import SwiftUI


struct IntroView: View {
    
    @AppStorage("signed-In") var currentUserSignIn : Bool = false
    
    var body: some View {
        ZStack{
            //background
            RadialGradient(
                gradient: Gradient(colors: [Color.purple
                                            , Color.blue]),
                center: .topLeading,
                startRadius: 5,
                endRadius: 500)
            .ignoresSafeArea()
            
            if currentUserSignIn {
                Text("profile")
            } else {
                onBoardingView()
            }
            
            //if user sign in
            //profile view
            //if not
            //onboarding view
            
        }
    }
}

#Preview {
    IntroView()
}
