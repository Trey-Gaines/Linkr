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
    var imageData: Data
    var colorHexString: String
    var spotifyInfo: String?
    var tiktokInfo: String?
    var youtubeInfo: String?
    var instagtamInfo: String?
    var twitterInfo: String?
    var twitchInfo: String?
    var personalLinkA: String?
    var personalLinkAImg: Data?
    var personalLinkB: String?
    var personalLinkBImg: Data?
    var personalLinkC: String?
    var personalLinkCImg: Data?
    var personalLinkD: String?
    var personalLinkDImg: Data?
    
    init(
        timestamp: Date = Date.now,
        firstName: String,
        lastName: String,
        imageData: Data,
        colorHexString: String,
        spotifyInfo: String? = nil,
        tiktokInfo: String? = nil,
        youtubeInfo: String? = nil,
        instagtamInfo: String? = nil,
        twitterInfo: String? = nil,
        twitchInfo: String? = nil,
        personalLinkA: String? = nil,
        personalLinkAImg: Data? = nil,
        personalLinkB: String? = nil,
        personalLinkBImg: Data? = nil,
        personalLinkC: String? = nil,
        personalLinkCImg: Data? = nil,
        personalLinkD: String? = nil,
        personalLinkDImg: Data? = nil
    ) {
        self.timestamp = timestamp
        self.firstName = firstName
        self.lastName = lastName
        self.imageData = imageData
        self.colorHexString = colorHexString
        self.spotifyInfo = spotifyInfo
        self.tiktokInfo = tiktokInfo
        self.youtubeInfo = youtubeInfo
        self.instagtamInfo = instagtamInfo
        self.twitterInfo = twitterInfo
        self.twitchInfo = twitchInfo
        self.personalLinkA = personalLinkA
        self.personalLinkAImg = personalLinkAImg
        self.personalLinkB = personalLinkB
        self.personalLinkBImg = personalLinkBImg
        self.personalLinkC = personalLinkC
        self.personalLinkCImg = personalLinkCImg
        self.personalLinkD = personalLinkD
        self.personalLinkDImg = personalLinkDImg
    }
}
