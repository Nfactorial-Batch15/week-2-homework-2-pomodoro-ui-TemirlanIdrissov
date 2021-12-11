//
//  ContentView.swift
//  PomadoroTime
//
//  Created by Temirlan Idrissov on 09.12.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab: Int = 1
    
    init() {
        let tabBarAppeareance = UITabBarAppearance()
        tabBarAppeareance.backgroundColor = .white
        
        UITabBar.appearance().standardAppearance = tabBarAppeareance
    }
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Screen_1()
//            Screen_2()
//            Screen_3()
//            Screen_4()
//            SettingsView()
            SettingViewWithSave()
            HistoryScreen()
        }
        .accentColor(Color.white)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
