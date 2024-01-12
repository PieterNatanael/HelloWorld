//
//  ActionSheetsView.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 04/01/24.
//

import SwiftUI

struct ActionSheetsView: View {
    @State var showActionSheet : Bool = false
    @State var actionSheetPost1 : actionSheetPost = .otherPOst
    
    enum actionSheetPost {
        case myPost
        case otherPOst
    }
    
    var body: some View {
        VStack {
            HStack{
                Circle()
                    .frame(width: 30, height: 30)
                Text("User name")
                Spacer()
                Button(action: {
                    
                    actionSheetPost1 = .otherPOst
                    showActionSheet.toggle()}, label: {
                    Image(systemName: "ellipsis")
                })
                .accentColor(.primary)
                
            }
    //        Button("Button") {
    //            showActionSheet.toggle()
    //        }
            .padding(.horizontal)
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
        .actionSheet(isPresented: $showActionSheet, content:
                    getActionSheet)
    }
    func getActionSheet() -> ActionSheet {
        
        let shareButton : ActionSheet.Button = .default(Text("delete"))
        
        let reportButton : ActionSheet.Button =
            .default(Text("delete"))
        
        let cancelButton : ActionSheet.Button =
            .default(Text("Cancel"))
        
        
        switch actionSheetPost1 {
        case .myPost:
            return ActionSheet(
                title: Text("Text"),
                message: nil,
                buttons: [shareButton, reportButton])
        case .otherPOst:
            return ActionSheet(
                title: Text("Text"),
                message: nil,
                buttons: [cancelButton])
      
       
        }
        
        
        
//        let button1 : ActionSheet.Button = .default(Text("Text1"))
//        let button2 : ActionSheet.Button = .destructive(Text("text 2"))
//        let button3 : ActionSheet.Button = .cancel(Text("cancel"))
//        //return  ActionSheet(title: Text("Action"))
//        return ActionSheet(
//            title: Text("Button"),
//            message: Text("This is the message"),
//            buttons: [button1, button2, button3])
    }
}

#Preview {
    ActionSheetsView()
}
