//
//  Icons.swift
//  HelloWorld
//
//  Created by Pieter Yoshua Natanael on 20/12/23.
//

import SwiftUI

struct Icons: View {
    var body: some View {
        Image(systemName: "pencil.tip.crop.circle.fill")
            .resizable()
            //.renderingMode(.original)
            //.aspectRatio(contentMode:.fit)
            //.scaledToFit()
            .scaledToFill()
            //.font(.largeTitle)
            //.font(.system(size: 300))
            .foregroundColor(Color(#colorLiteral(red: 0.6642242074, green: 0.6642400622, blue: 0.6642315388, alpha: 1)))
            .frame(width: 300, height: 300)
            //.clipped()
        Image(systemName: "battery.100.bolt")
               .resizable()
                .symbolRenderingMode(.palette)
                .foregroundStyle(.brown, .gray, .green)
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
    }
}

#Preview {
    Icons()
}
