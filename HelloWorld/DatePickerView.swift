//
//  DatePickerView.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 08/01/24.
//

import SwiftUI

struct DatePickerView: View {
    @State var datePicker : Date = Date()
    
    var body: some View {
        DatePicker("Select Date", selection: $datePicker)
            .accentColor(.blue)
            .datePickerStyle(CompactDatePickerStyle())
    }
}

#Preview {
    DatePickerView()
}
