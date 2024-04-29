//
//  PhotoPickerView.swift
//  Linkr
//
//  Created by Trey Gaines on 4/11/24.
//

import SwiftUI
import PhotosUI

struct PhotoPickerView: View {
    @Bindable var globalModel: appModel
    
    var body: some View {
        VStack {
            PhotosPicker(selection: $globalModel.myImage, matching: .images) {
                if let convertedImage = globalModel.myImageConverted {
                    Image(uiImage: convertedImage)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 325, height: 325)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                } else {
                    Label("Select your Profile Photo", systemImage: "photo.fill")
                        .frame(width: 300, height: 300)
                        .offset(y: 145)
                }
            }
            .frame(width: 300, height: 300)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.gray, lineWidth: 1)
            )
        }
        .onChange(of: globalModel.myImage) { _, _ in
            Task {
                if let itemChosen = globalModel.myImage,
                   let myData = try? await itemChosen.loadTransferable(type: Data.self) {
                    if let myConvertedImage = UIImage(data: myData) {
                        globalModel.myImageConverted = myConvertedImage
                        globalModel.myImageData = convertImageToJPEGData(image: myConvertedImage, compressionQuality: 1)
                    }
                }
            }
        }
    }
}

#Preview {
    PhotoPickerView(globalModel: appModel())
    //.environment(appModel())
}

extension PhotoPickerView {
    private func convertImageToJPEGData(image: UIImage, compressionQuality: CGFloat = 1.0) -> Data? {
        return image.jpegData(compressionQuality: compressionQuality)
    }
}
