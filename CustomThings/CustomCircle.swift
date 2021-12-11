//
//  CustomCircle.swift
//  PomadoroTime
//
//  Created by Temirlan Idrissov on 09.12.2021.
//

import SwiftUI

struct CircleTrack: View {
    var circleTo: Double
    var body: some View {
        Circle()
            .stroke(Color.white, lineWidth: 6)
            .opacity(0.3)
            .frame(width: 250, height: 250)
            .overlay(
                Circle()
                    .trim(from: 0.0, to: circleTo)
                    .stroke(Color.white, lineWidth: 6)
                    .rotationEffect(.degrees(270))
            )
    }
}
