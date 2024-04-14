//
//  ObservableObject.swift
//  Linkr
//
//  Created by Trey Gaines on 4/10/24.
//

import Foundation
import Observation
import PhotosUI
import _PhotosUI_SwiftUI

@Observable
class appModel {
    var currentIndex: Int?
    var progressTrack: Int?
    var shareMainViewChange: Int?
    
    
    
    
    //Things for UserModel
    public var first: String = ""
    public var last: String = ""
    public var myImage: PhotosPickerItem?
    public var myImageConverted: UIImage?
    
    //Links
    public var twitterLink: String = ""
    public var intagramLink: String = ""
    public var facebookLink: String = ""
    public var youtubeLink: String = ""
    public var twitchLink: String = ""
    public var tiktokLink: String = ""
    public var redditLink: String = ""
    public var snapchatLink: String = ""
    public var pintrestLink: String = ""
    public var discordLink: String = ""
    public var spotifyLink: String = ""
    public var randomLinkA: String = ""
    public var randomLinkB: String = ""
    public var randomLinkC: String = ""
        
}
