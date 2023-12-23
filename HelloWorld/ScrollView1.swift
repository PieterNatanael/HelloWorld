//
//  ScrollView.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 21/12/23.
//

import SwiftUI

struct ScrollView: View {
    var body: some View {
        
        ScrollView {
            
         VStack{
                Circle()
                Circle()
                Circle()
                Circle()
            }
        }
    
    }
}

#Preview {
    ScrollView()
}
