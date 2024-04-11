//
//  AccountLink.swift
//  Linkr
//
//  Created by Trey Gaines on 4/11/24.
//

import SwiftUI
import PhotosUI

struct AccountLink: View {
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    var body: some View {
        PhotoPickerView()
            .padding(25)
        TextField("What's your first name?", text: $firstName)
                    .padding(10)
                    .cornerRadius(10)
                    .multilineTextAlignment(.center)
                    .frame(width: 350)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                    .padding(.bottom, 5)
                    
        
        TextField("What's your kast name?", text: $lastName)
                    .padding(10)
                    .cornerRadius(10)
                    .multilineTextAlignment(.center)
                    .frame(width: 350)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                    
    }
}

#Preview {
    AccountLink()
}
