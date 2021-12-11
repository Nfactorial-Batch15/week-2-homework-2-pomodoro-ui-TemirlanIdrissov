//
//  CustomAction.swift
//  PomadoroTime
//
//  Created by Temirlan Idrissov on 09.12.2021.
//

import SwiftUI

struct ButtoAction: View {
    var imageLink: String
    var body: some View {
        ZStack {
            Button(action: {}) {
                Circle()
                    .fill(Color.gray)
                    .frame(width: 56, height: 56)
                    .opacity(0.85)
            }
            Image(imageLink)
            
        }
    }
}

struct ButtonCategory: View {
    var body: some View {
        ZStack{

                Button(action: {}) {
                    RoundedRectangle(cornerRadius: 24)
                        .fill(Color.white).opacity(0.35)
                        .frame(width: 170, height: 36)
                }
            HStack{
                Image(systemName: "pencil")
                Text("Focus Category")
            }
            .foregroundColor(Color.white)
        }
        .padding(.bottom, 52)
    }
}

struct ButtonCategoryType: View {
    var text: String
    var body: some View {
            ZStack {
                Button(action: {}) {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.gray)
                        .opacity(0.2)
                }
                Text(text).foregroundColor(Color.black)
            }
            .frame(width: 172, height: 60)
    }
}


struct ButtonCategoryTypeBlackColor: View {
    var text: String
    var body: some View {
        ZStack {
            Button(action: {}) {
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.black)
                    .opacity(0.8)
            }
            Text(text).foregroundColor(Color.white)
        }
        .frame(width: 172, height: 60)
    }
}

struct Settings: View {
    @State private var mainCircleColorChanged = false
    @State private var settingsCircleColorChanged = false
    @State private var historyCircleColorChanged = false
    
    var body: some View {
        ZStack {
            VStack{
                ZStack{
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(settingsCircleColorChanged ? Color(.systemCyan) : .white)
                        .opacity(0.3)
                    Image("settings")
                        .foregroundColor(settingsCircleColorChanged ? .yellow : .white)
                }
                Text("Settings")
                    .font(.system(size: 10, weight: .regular))
                    .foregroundColor(.white)
            }
            .onTapGesture {
                self.settingsCircleColorChanged.toggle()
            }
        }
    }
}
