//
//  SettingsView.swift
//  PomadoroTime
//
//  Created by Temirlan Idrissov on 10.12.2021.
//

import SwiftUI

struct SettingsView: View {
//    @State private var score = 0
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea().opacity(0.9)
            VStack {
                Text("Settings")
                    .font(.system(size: 17, weight: .bold))
                VStack {
                    CustomList(textLeft: "Focus Time", textForTextField: "25:00")
                    Image("Separator")
                        .padding(.leading)
                    
                    CustomList(textLeft: "Break Time", textForTextField: "  5:00")
                    Image("Separator")
                        .padding(.leading)
                    CustomList(textLeft: "Focus Time", textForTextField: "        2")
                    Image("Separator")
                        .padding(.leading)
                }
                .padding(.top, 34)
                Spacer()
            }
            
            
        }
        .foregroundColor(Color.white)
        .tabItem {
            Image(systemName: "slider.horizontal.3")
            Text("Settings")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
