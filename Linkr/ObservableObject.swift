//
//  ObservableObject.swift
//  Linkr
//
//  Created by Trey Gaines on 4/10/24.
//

import Foundation
import Observation

@Observable
class appObject {
    var first: String
    var last: String
    
    init(first: String, last: String) {
        self.first = first
        self.last = last
    }
}
