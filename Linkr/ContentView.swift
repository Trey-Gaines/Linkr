//
//  ContentView.swift
//  Linkr
//
//  Created by Trey Gaines on 4/9/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    //@Query UserModel
    var myArray: [Int] = []
    @State private var navigate = false
    @State private var showingPreviousProfiles = false
    
    var body: some View {
        VStack {
            ZStack {
                HStack {
                    if !myArray.isEmpty {
                        Button {
                            print("Button was tapped")
                        } label: {
                            Image(systemName: "plus")
                                .font(.system(size: 25))
                        }
                        Spacer()
                        Button {
                            print("Button was tapped")
                        } label: {
                            Image(systemName: "square.and.arrow.up")
                                .font(.system(size: 20))
                        }
                    }
                }
                .padding()
                Text("Linkr")
                    .font(.title)
                    .fontWeight(.semibold)
            }
            .frame(height: 44)
            Spacer()
            ProfileView()
            Spacer()
            Button {
                showingPreviousProfiles.toggle()
            } label: {
                Image(systemName: "arrowtriangle.down.circle")
                    .font(.title3)
            }
        }
        .sheet(isPresented: $showingPreviousProfiles) {
            Text("Yes")
        }
    }
}

#Preview {
    ContentView()
}
