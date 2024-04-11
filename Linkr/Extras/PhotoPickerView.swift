//
//  PhotoPickerView.swift
//  Linkr
//
//  Created by Trey Gaines on 4/11/24.
//

import SwiftUI
import PhotosUI

struct PhotoPickerView: View {
    @State var myImage: PhotosPickerItem?
    @State var myImageConverted: UIImage?
    
    var body: some View {
        VStack {
            PhotosPicker(selection: $myImage, matching: .images) {
                Label("Select your Profile Photo", systemImage: "photo.fill")
            }
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.gray, lineWidth: 1)
                    .frame(width: 300, height: 300, alignment: .top)
                    .offset(y: -125)
                    .padding()
            )
        }
    }
}

#Preview {
    PhotoPickerView()
}
