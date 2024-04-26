//
//  Welcome&Info.swift
//  Linkr
//
//  Created by Trey Gaines on 4/11/24.
//

import SwiftUI

struct Welcome_Info: View {
    var body: some View {
        @Environment(appModel.self) var globalModel: appModel?
        
        NavigationStack {
            Spacer()
            Label("Linkr", systemImage: "link.icloud")
                .fontWeight(.semibold)
                .font(.title)
                .multilineTextAlignment(.center)
                .padding(.bottom, 5)
            
            Text("Welcome to your digital hub for all things you")
            
                .frame(width: 200)
                .multilineTextAlignment(.center)
            
            CommonButtonView(title: "Create a new you") {
                PersonalInfo(globalModel: appModel())
                //Use button to navigate to next screen
            }
            Spacer()
            LoadingCap(progress: 0.0)
        }
    }
}

#Preview {
    Welcome_Info()
        .environment(appModel())
}
