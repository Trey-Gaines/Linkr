//
//  CircleProfileView.swift
//  Linkr
//
//  Created by Trey Gaines on 4/29/24.
//

import SwiftUI
import PhotosUI
import UIKit

struct CircleProfileView: View {
    @State var myImage: UIImage?
    
    var body: some View {
        if let convertedImage = myImage {
            Image(uiImage: convertedImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200, height: 200)
                .clipShape(Circle())
            
        } else {
            Image("defaultUser")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200, height: 200)
                .clipShape(Circle())
        }
    }
}

#Preview {
    CircleProfileView()
}
