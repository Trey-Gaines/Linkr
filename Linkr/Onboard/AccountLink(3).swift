//
//  AccountLink.swift
//  Linkr
//
//  Created by Trey Gaines on 4/11/24.
//

import SwiftUI
import PhotosUI

struct AccountLink: View {
    @State private var twitterButton: Bool = false
    @State private var intagramButton: Bool = false
    @State private var facebookButton: Bool = false
    @State private var youtubeButton: Bool = false
    @State private var twitchButton: Bool = false
    @State private var tiktokButton: Bool = false
    @State private var redditButton: Bool = false
    @State private var snapchatButton: Bool = false
    @State private var pintrestButton: Bool = false
    @State private var discordButton: Bool = false
    @State private var spotifyButton: Bool = false
    @State private var randomButtonA: Bool = false
    @State private var randomButtonB: Bool = false
    @State private var randomLinkC: Bool = false
    
    var body: some View {
        Spacer()
        Text("Click the items you want to link")
        ScrollView(.horizontal) {
            LazyHGrid(rows: [GridItem(.flexible())]) {
                ForEach(AccountLink.colors, id: \.self) {
                    RoundedRectangle(cornerRadius: 10)
                        .fill($0)
                        .frame(width: 100, height: 100)
                }
            }
        }
        Spacer()
        LoadingCap(progress: 0.4)
    }
}

#Preview {
    AccountLink()
        .environment(appModel())
}




extension AccountLink {
    static var colors: [Color] {
        var myArray: [Color] = []
        for _ in 0..<13 {
            let red = Double.random(in: 0...1)
            let green = Double.random(in: 0...1)
            let blue = Double.random(in: 0...1)
            myArray.append(Color(red: red, green: green, blue: blue))
        }
        return myArray
    }
}
