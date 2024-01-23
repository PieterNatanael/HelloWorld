//
//  ModelView.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 16/01/24.
//

import SwiftUI

struct userModel: Identifiable {
    let id : String = UUID().uuidString
    let userName : String
    let name : String
    let follower : Int
    let verified : Bool
}
struct ModelView: View {
    @State var users : [userModel] = [
        userModel(userName: "Nick123", name: "Nick", follower: 100, verified: true),
        userModel(userName: "Ninja", name: "Emily", follower: 50, verified: false),
        userModel(userName: "Yoo", name: "Amy", follower: 50, verified: true),
        userModel(userName: "Loop", name: "John", follower: 50, verified: false)
    
    ]
        
//    "Nick", "emily", "Sahsa", "George"]
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in
                    HStack(spacing: 15.0) {
                        Circle()
                            .frame(width: 50, height: 50)
                        VStack(alignment: .leading) {
                            Text(user.name)
                            Text("@\(user.userName)")
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        }
                        Spacer()
                        if user.verified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                       
                        VStack{
                            Text("\(user.follower)")
                                .font(.headline)
                            Text("follower")
                                .font(.caption)
                        }
                    }
                }
             
                 
                    .padding(.vertical, 10)
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Users")
        }
    }


#Preview {
    ModelView()
}
