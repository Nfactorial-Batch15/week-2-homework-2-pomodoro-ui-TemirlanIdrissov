//
//  Screen_4.swift
//  PomadoroTime
//
//  Created by Temirlan Idrissov on 10.12.2021.
//

import SwiftUI


struct Screen_4: View {
    var body: some View {
        ZStack{
            BacgroundImage()
            pauseAndPlay
            bottomSheet
        }.edgesIgnoringSafeArea(.all)
    }
}


var textInsideCircleTrack: some View {
    VStack{
        Text("04:48")
            .font(.system(size: 44, weight: .bold))
        
        Text("Break")
            .padding(.top, -20)
    }
    .padding(.bottom, 40)
}


var pauseAndPlay: some View {
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


var bottomSheet: some View {
    VStack {
        Spacer()
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
            VStack {
                HStack{
                    Spacer()
                    Text("Focus Category")
                    Spacer()
                    Image("close")
                }
                .padding(.horizontal)
                .padding(.bottom, 35)
                HStack{
                    ButtonCategoryType(text: "Work")
                    ButtonCategoryType(text: "Study")
                }
                HStack{
                    ButtonCategoryTypeBlackColor(text: "Workout")
                    ButtonCategoryType(text: "Reading")
                }
                HStack{
                    ButtonCategoryType(text: "Meditation")
                    ButtonCategoryType(text: "Other")
                }
            }
            .padding(.bottom, 40)
            
            
        }.frame(height: 362)
    }
}


struct Screen_4_Previews: PreviewProvider {
    static var previews: some View {
        Screen_4()
    }
}
