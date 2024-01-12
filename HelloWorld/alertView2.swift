//
//  alertView2.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 04/01/24.
//

import SwiftUI

struct alertView2: View {
    
    @State var showAlert : Bool = false
    @State var bgColor1 : Color = Color.yellow
    @State var alertType : myAlerts1? = nil
    //@State var title1 : String = ""
    //@State var message1 : String = ""
    
    enum myAlerts1 {
        case success
        case error
    }
    
    var body: some View {
        ZStack {
            //bg
            bgColor1
                .ignoresSafeArea()
            
            VStack{
                Button("Button1")
                {
                    alertType = .error
                    //title1 = "Error🥲"
                    //message1 = "Kacau"
                    showAlert.toggle()
                }
                
                Button("Button2") {
                    alertType = .success
                    //title1 = "error3 😍"
                    //message1 = "kacau 3"
                    showAlert.toggle()
                }
                
            }
            .foregroundColor(.white)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .background(Color.red)
            
           
            .alert(isPresented: $showAlert, content: {
           getAlert1()
                //Alert(title: Text("There was ERROR"))
        })
        }
    }
    func getAlert1() -> Alert{
        switch alertType {
        case .error:
            return Alert(title: Text("error"))
        case .success :
            return Alert(title: Text("success"))
        default:
            return Alert(title: Text("error"))
        }
//        Alert(
//            title: Text("Alert"),
//            message: Text("This is why"),
//            primaryButton: .destructive(Text("Cancel"),
//                                        action: {
//                                            bgColor1 = .red
//                                        }
//                                       ),
//            secondaryButton: .cancel())
    }
    
}

#Preview {
    alertView2()
}
