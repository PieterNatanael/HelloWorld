//
//  profileView.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 27/01/24.
//

import SwiftUI

struct profileView: View {
    
    //app storage
    @AppStorage("name") var currentUserName :String?
    @AppStorage("age") var currentUserAge : Int?
    @AppStorage("gender") var currentUserGender : String?
    @AppStorage("signed-In") var currentUserSignIn : Bool = false
    
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            Text(currentUserName ?? "your name here")
            Text("this user is \(currentUserAge ?? 0) years old")
            Text("gender \(currentUserGender ?? "dont know")")
            Text("SIGN OUT")
                .font(.title)
                .background(Color.black)
                .frame(height:50)
                .frame(maxWidth: .infinity)
                .onTapGesture {
                    signOut()
                }
        }
        .font(.title)
        .padding()
        .background(Color.blue)
        .shadow(radius: 10)
    }
    func signOut(){
    currentUserName=nil
    currentUserAge=nil
    currentUserGender=nil
        withAnimation(.spring()) {
            currentUserSignIn=false
        }
    
        
    }
}

#Preview {
    profileView()
}
