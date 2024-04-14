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
    
    @State private var globalObject = appModel() //Global Object
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: UserModel.self)
        .environment(globalObject) //Environment rather than EnvironmentObject
    }
}
