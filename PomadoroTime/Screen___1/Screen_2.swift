//
//  Screen_2.swift
//  PomadoroTime
//
//  Created by Temirlan Idrissov on 10.12.2021.
//

import SwiftUI

struct Screen_2: View {
    var body: some View {
        ZStack{
            BacgroundImage()
            VStack{
                ButtonCategory()
                ZStack{
                    CircleTrack(circleTo: 0.1)
                    textInsideCircleTrack
                }.foregroundColor(Color.white)
                
                HStack {
                    Spacer()
                    ButtoAction(imageLink: "pause")
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
            Image(systemName: "slider.horizontal.3")
            Text("Settings")
        }
    }
    
    var textInsideCircleTrack: some View {
        VStack{
            Text("24:32")
                .font(.system(size: 44, weight: .bold))
//                            .padding()
                
            Text("Focus on your task")
                .padding(.top, -20)
        }
        .padding(.bottom, 40)
    }
}

struct Screen_2_Previews: PreviewProvider {
    static var previews: some View {
        Screen_2()
    }
}
