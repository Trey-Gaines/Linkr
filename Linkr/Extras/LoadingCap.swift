//
//  LoadingCap.swift
//  Linkr
//
//  Created by Trey Gaines on 4/26/24.
//

import SwiftUI

struct LoadingCap: View {
    @State public var progress: CGFloat
    //Planning on moving this outside the onboarding Views and then adding animation so it looks smoother
    
    var body: some View {
        VStack {
            Capsule()
                .frame(width: 300, height: 30)
                .foregroundColor(.accentColor)
                .overlay(
                    Capsule()
                        .frame(width: progress * 300, height: 30)
                        .foregroundColor(.white)
                        .animation(.linear, value: progress),
                    alignment: .leading
                )
        }
    }
}

struct LoadingCap_Previews: PreviewProvider {
    static var previews: some View {
        LoadingCap(progress: 0.90)
    }
}
