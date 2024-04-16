//
//  ProfileView.swift
//  Linkr
//
//  Created by Trey Gaines on 4/10/24.
//

import SwiftUI

struct ProfileView: View {
    var myArray: [Int] = []
    @State private var navigate = false
    
    var body: some View {
        NavigationStack {
            VStack {
                if myArray.isEmpty {
                    ContentUnavailableView(label: {
                        Label("No Profile", systemImage: "list.bullet.rectangle.fill")
                    }, description: {
                        Text("There aren't any profiles")
                    }, actions: {
                        Button("Create a profile") {
                            navigate = true
                        }
                    })
                } else {
                    ProfileDisplay()
                }
            }
            .fullScreenCover(isPresented: $navigate) {
                Welcome_Info()
            }
        }
    }
}

#Preview {
    ProfileView()
}
