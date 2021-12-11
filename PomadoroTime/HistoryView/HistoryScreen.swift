//
//  HistoryScreen.swift
//  PomadoroTime
//
//  Created by Temirlan Idrissov on 10.12.2021.
//

import SwiftUI

struct HistoryScreen: View {
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all).opacity(0.9)
            VStack {
                HStack{
                        
                    Spacer()
                    Text("History")
                    Spacer()
                 
                }
                .font(.system(size: 17, weight: .bold))
                .padding(.horizontal)
                VStack {
                    CustomTimeHistory(textTime: "21.11.21")
                        .padding(.bottom)
                    VStack {
                        CustomList(textLeft: "Focus time", textForTextField: "25:00")
                        Image("Separator")
                        CustomList(textLeft: "Break time", textForTextField: "  5:00")
                        Image("Separator")
                        CustomList(textLeft: "Sessions time", textForTextField: "       2")
                        Image("Separator")
                    }
                    
                }
                .padding(.bottom, 32)
                VStack {
                    CustomTimeHistory(textTime: "21.11.21").padding(.bottom)
                    CustomList(textLeft: "Focus time", textForTextField: "25:00")
                    Image("Separator")
                    CustomList(textLeft: "Break time", textForTextField: "  5:00")
                    Image("Separator")
                    CustomList(textLeft: "Sessions time", textForTextField: "       3")
                    Image("Separator")
                }
                .padding(.bottom,32)
                VStack {
                    CustomTimeHistory(textTime: "21.11.21")
                        .padding(.bottom)
                    CustomList(textLeft: "Focus time", textForTextField: "25:00")
                    Image("Separator")
                    CustomList(textLeft: "Break time", textForTextField: "  5:00")
                    Image("Separator")
                    CustomList(textLeft: "Sessions time", textForTextField: "       1")
                    Image("Separator")
                }
                .padding(.bottom, 32)
                Spacer()
                
                
                
                
                
                
                
            }
        }.foregroundColor(Color.white)
            .tabItem {
                Image(systemName: "doc")
                Text("History")
            }
        
    }
}


var historyBoard: some View {
    HStack {
        CustomList(textLeft: "Focus Time", textForTextField: "25:00")
    }.frame(height: 26)
}

struct HistoryScreen_Previews: PreviewProvider {
    static var previews: some View {
        HistoryScreen()
    }
}

struct CustomTimeHistory: View {
    var textTime: String
    var body: some View {
        HStack {
            Text(textTime)
                .font(.system(size: 20, weight: .bold))
            Spacer()
        }
        .frame(width: 358, height: 26)
    }
}
