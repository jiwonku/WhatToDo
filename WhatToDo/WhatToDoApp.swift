//
//  WhatToDoApp.swift
//  WhatToDo
//
//  Created by Jason Wongu Ji on 11/1/24.
//

import SwiftUI

@main
struct WhatToDoApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                    .tabItem {
                        Image(systemName: "1.square.fill")
                        Text("SwiftUi")
                    }
                
                /// 알맹이는 UIKit인데 swiftui로 화면을 전개한다.
                MainViewControllerRepresentable()
                    .tabItem {
                        Image(systemName: "2.square.fill")
                        Text("UIKit")
                    }
            }
            
        }
    }
}
