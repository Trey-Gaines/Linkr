//
//  PickUserColor.swift
//  Linkr
//
//  Created by Trey Gaines on 4/29/24.
//

import SwiftUI

struct PickUserColor: View {
    @State private var myColor = Color.red
    @Environment(appModel.self) var globalModel: appModel?
    
    var body: some View {
        VStack {
            ColorPicker("Choose your profile color", selection: $myColor, supportsOpacity: false)
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(myColor)
                VStack {
                    Spacer()
                    CircleProfileView(myImage: globalModel?.myImageConverted)
                        .padding(25)
                    
                    Spacer()
                }
            }
            CommonButtonView(title: "Add some accounts", destination: { AccountLink() })
                .padding()
            LoadingCap(progress: 0.35)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    PickUserColor()
        .environment(appModel())
}
