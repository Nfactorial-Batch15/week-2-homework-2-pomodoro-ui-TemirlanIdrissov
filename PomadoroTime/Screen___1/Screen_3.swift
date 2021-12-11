//
//  Screen_3.swift
//  PomadoroTime
//
//  Created by Temirlan Idrissov on 10.12.2021.
//

import SwiftUI

struct Screen_3: View {
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
            .tabItem {
                Image(systemName: "slider.horizontal.3")
                Text("Settings")
            }
        }
        
        var textInsideCircleTrack: some View {
            VStack{
                Text("04:48")
                    .font(.system(size: 44, weight: .bold))
    //                            .padding()
                    
                Text("Break")
                    .padding(.top, -20)
            }
            .padding(.bottom, 40)
        }
}

struct Screen_3_Previews: PreviewProvider {
    static var previews: some View {
        Screen_3()
    }
}
