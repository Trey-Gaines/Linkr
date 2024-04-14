//
//  PersonalInfo(2).swift
//  Linkr
//
//  Created by Trey Gaines on 4/11/24.
//

import SwiftUI

struct PersonalInfo: View {
    @Bindable var globalModel: appModel
    
    
    
    var body: some View {
        NavigationStack {
            Spacer()
            Spacer()
            PhotoPickerView(globalModel: appModel())
                .padding(25)
            TextField("What's your first name?", text: $globalModel.first)
                        .padding(10)
                        .cornerRadius(10)
                        .multilineTextAlignment(.center)
                        .frame(width: 350)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                        .padding(.bottom, 5)
                        
            
            TextField("What's your kast name?", text: $globalModel.last)
                        .padding(10)
                        .cornerRadius(10)
                        .multilineTextAlignment(.center)
                        .frame(width: 350)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray, lineWidth: 1)
                        )
            
            CommonButtonView(title: "Add some accounts", destination: { AccountLink() })
                .padding()
            Spacer()
        }
    }
}

#Preview {
    PersonalInfo(globalModel: appModel())
}
