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
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: UserModel.self)
    }
}
