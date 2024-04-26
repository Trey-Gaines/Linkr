//
//  ContentView.swift
//  Linkr
//
//  Created by Trey Gaines on 4/9/24.
//

import SwiftUI
import SwiftData


struct ContentView: View {
    //Marked as optional to avoid crash. The environment has to be injected for functionality.
    @Environment(appModel.self) private var globalModel: appModel?
    @Environment(\.modelContext) var myUserProfile
    @Query(
        //sort: \.timestamp
        ) private var items: [UserModel]
    
    
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
                Button {
                    globalModel?.visualModeLight.toggle()
                } label: {
                    Text("Linkr")
                        .font(.title)
                        .fontWeight(.bold)
                }
                
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
        .sheet(isPresented: $showingPreviousProfiles, content: {
            NavigationStack {
                PickProfileView()
            }
            .presentationDetents([.medium]) //Brings the screen to less than halfway
        })
        
    }
}

#Preview {
    ContentView()
        .environment(appModel())
}
