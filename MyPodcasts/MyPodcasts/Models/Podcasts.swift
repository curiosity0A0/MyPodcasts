//
//  Podcasts.swift
//  MyPodcasts
//
//  Created by 洪森達 on 2018/9/9.
//  Copyright © 2018年 sen. All rights reserved.
//

import Foundation

struct Podcast:Decodable {
    
    var trackName: String?
    var artistName: String?
    var artworkUrl600:String?
    var trackCount: Int?
    var feedUrl: String?
}



