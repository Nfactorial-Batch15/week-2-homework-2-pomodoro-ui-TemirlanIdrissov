//
//  SettingViewWithSave.swift
//  PomadoroTime
//
//  Created by Temirlan Idrissov on 10.12.2021.
//

import SwiftUI

struct SettingViewWithSave: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea().opacity(0.9)
            VStack {
                HStack{
                    Image(systemName: "chevron.left")
                        
                    Spacer()
                    Text("Settings")
                        .padding(.leading)
                    Spacer()
                    Text("Save")
                }
                .font(.system(size: 17, weight: .bold))
                .padding(.horizontal)
                VStack {
                    CustomList(textLeft: "Focus Time", textForTextField: "25:00")
                    Image("Separator")
                        .padding(.leading)
                    
                    CustomList(input: "5:00",textLeft: "Break Time", textForTextField: "  5:00")
                    Image("Separator")
                        .padding(.leading)
                    CustomList(textLeft: "Focus Time", textForTextField: "       2")
                    Image("Separator")
                        .padding(.leading)
                }
                .padding(.top)
                Spacer()
            }
            
            
        }
        .foregroundColor(Color.white).tabItem {
            Image(systemName: "slider.horizontal.3")
            Text("Settings")
        }
    }
}

struct SettingViewWithSave_Previews: PreviewProvider {
    static var previews: some View {
        SettingViewWithSave()
    }
}
