//
//  CommonButtonView.swift
//  Linkr
//
//  Created by Trey Gaines on 4/11/24.
//

import SwiftUI

struct CommonButtonView<Destination: View>: View {
    //Struct is defined with generic parameter destination which conforms to View
    //This will allow any SwiftUI to be passed in as the destination
    let destination: Destination
    let title: String
    
    init(title: String, @ViewBuilder destination: () -> Destination) {
        self.title = title
        self.destination = destination()
    }
    
    var body: some View {
        NavigationLink(destination: self.destination) {
            Text(self.title)
                .foregroundColor(.white)
                .padding()
                .background(Color.black)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .frame(width: 200)
        }
    }
}
