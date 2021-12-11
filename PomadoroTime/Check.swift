//
//  Check.swift
//  PomadoroTime
//
//  Created by Temirlan Idrissov on 09.12.2021.
//

import SwiftUI

struct Check: View {
    @State var input = ""
        
        var body: some View {
                HStack{
                    Text("Focus time")
                    Spacer()
                    TextField("25:00", text: $input)
                        .frame(width: 46, height: 22)
                        .keyboardType(.decimalPad)
                }
                .padding()
            
                
        }
}

struct Check_Previews: PreviewProvider {
    static var previews: some View {
        Check()
    }
}
