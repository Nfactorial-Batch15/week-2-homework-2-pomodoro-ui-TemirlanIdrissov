//
//  TabViewForScreen.swift
//  PomadoroTime
//
//  Created by Temirlan Idrissov on 09.12.2021.
//

import SwiftUI

struct TabViewForScreen: View {
    var body: some View {
        TabView {
            Color.red.edgesIgnoringSafeArea(.all)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
            Color.yellow.edgesIgnoringSafeArea(.all)
                .tabItem {
                    Image(systemName: "bookmark.circle.fill")
                    Text("Bookmark")
                }
            Color.blue.edgesIgnoringSafeArea(.all)
                .tabItem {
                    Image(systemName: "bookmark.circle.fill")
                    Text("Bookmark")
                }
        }
        .accentColor(Color.white)
    }
}

struct TabViewForScreen_Previews: PreviewProvider {
    static var previews: some View {
        TabViewForScreen()
    }
}
