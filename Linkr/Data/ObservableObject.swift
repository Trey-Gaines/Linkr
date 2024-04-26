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


struct customLinkr { //Struct for the user to create custom links in their digital profile
    public var myImage: PhotosPickerItem?
    public var myImageConverted: UIImage?
    public var myLink: String = ""
    public var myLinkName: String = ""
}



@Observable
class appModel {
    //Things for onboard/setup
    var currentIndex: Int?
    var progressTrack: Int?
    var shareMainViewChange: Int?
    var visualModeLight: Bool = true
    
    //Things for UserModel
    public var first: String = ""
    public var last: String = ""
    public var myImage: PhotosPickerItem?
    public var myImageConverted: UIImage?
    
    //Default Link Information located in horizontal scrollview below user name, image, aspiration/career
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
    
    //Custom Links
    
    
    //Funcs
}
