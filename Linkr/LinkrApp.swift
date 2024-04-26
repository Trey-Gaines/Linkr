//
//  LinkrApp.swift
//  Linkr
//
//  Created by Trey Gaines on 4/9/24.
//

import SwiftUI
import SwiftData

@main
struct LinkrApp: App {
    //Grab user preference, set inside globalObject for color theme, change AppStorage UserDefaults
    @State private var globalObject = appModel() //Global Object
    
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .background(Color("myColor"))
        }
        .modelContainer(for: UserModel.self) //Container for App's UserModel 
        .environment(globalObject) //Environment rather than EnvironmentObject
    }
}
