//
//  CustomSettingsHstack.swift
//  PomadoroTime
//
//  Created by Temirlan Idrissov on 10.12.2021.
//

import SwiftUI

struct CustomList: View {
    @State var input = ""
    var textLeft: String
    var textForTextField: String
    
    var body: some View {
        HStack{
            Text(textLeft)
            Spacer()
            TextField(textForTextField, text: $input)
                .frame(width: 46, height: 22)
                .keyboardType(.decimalPad)
        }
        .padding(.horizontal)
        .padding(.bottom, 10)
        
        
    }
}
