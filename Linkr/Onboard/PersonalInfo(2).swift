//
//  PersonalInfo(2).swift
//  Linkr
//
//  Created by Trey Gaines on 4/11/24.
//

import SwiftUI

struct PersonalInfo: View {
    var body: some View {
        NavigationStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            
            CommonButtonView(title: "Add some accounts", destination: { PersonalInfo() })
        }
    }
}

#Preview {
    PersonalInfo()
}
