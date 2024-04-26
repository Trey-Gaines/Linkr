//
//  UserModel.swift
//  Linkr
//
//  Created by Trey Gaines on 4/10/24.
//

import Foundation
import SwiftData

@Model
final class UserModel {
    var timestamp: Date
    var firstName: String
    var lastName: String
    var imageData: Data?
    var spotifyInfo: String?
    var tiktokInfo: String?
    var youtubeInfo: String?
    var instagtamInfo: String?
    var twitterInfo: String?
    var twitchInfo: String?
    
    
    init(firstName: String, lastName: String, timestamp: Date = .now) {
        self.timestamp = timestamp
        self.firstName = firstName
        self.lastName = lastName
    }
}
