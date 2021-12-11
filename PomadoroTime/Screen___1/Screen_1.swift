//
//  Screen_1.swift
//  PomadoroTime
//
//  Created by Temirlan Idrissov on 09.12.2021.
//

import SwiftUI

struct Screen_1: View {
    var body: some View {
        ZStack{
            BacgroundImage()
            VStack{
                ButtonCategory()
                ZStack{
                    CircleTrack(circleTo: 0.0)
                    textInsideCircleTrack
                }.foregroundColor(Color.white)
                
                HStack {
                    Spacer()
                    ButtoAction(imageLink: "play")
                    Spacer()
                    ButtoAction(imageLink: "stop")
                    Spacer()
                    
                }
                .padding(.top, 56)
                
            }
            .padding(.bottom, 130)
            
            
            
        }
        .edgesIgnoringSafeArea(.all)
        .tabItem {
            ZStack {
                Circle()
                    .fill(Color.white)
                    .frame(width: 30, height: 30)
                Image(systemName: "house")
                Text("Home")
            }
            
        }
    }
    
    var textInsideCircleTrack: some View {
        VStack{
            Text("25:00")
                .font(.system(size: 44, weight: .bold))
//                            .padding()
                
            Text("Focus on your task")
                .padding(.top, -20)
        }
        .padding(.bottom, 40)
    }
}

struct Screen_1_Previews: PreviewProvider {
    static var previews: some View {
        Screen_1()
    }
}
