//
//  PodcastCell.swift
//  MyPodcasts
//
//  Created by 洪森達 on 2018/9/11.
//  Copyright © 2018年 sen. All rights reserved.
//

import UIKit
import SDWebImage

class PodcastCell: UITableViewCell {
    
    
    @IBOutlet weak var podcastImageView: UIImageView!
    
    @IBOutlet weak var trackNameLabel: UILabel!
    
    @IBOutlet weak var artistNameLabel: UILabel!
    
    @IBOutlet weak var episodeLabel: UILabel!
    
    
    
    var podcast:Podcast! {
        
        
        didSet{
            
            trackNameLabel.text = podcast.trackName
            artistNameLabel.text = podcast.artistName
            episodeLabel.text = "\(podcast.trackCount ?? 0) Episodes"
            
            guard let url = URL(string: podcast.artworkUrl600 ?? "") else { return }
//            print(url)
//            URLSession.shared.dataTask(with: url) { (date, _, _) in
//
//             
//                guard let date = date else { return }
//
//                DispatchQueue.main.async {
//                    self.podcastImageView.image = UIImage(data: date)
//                }
//            }.resume()
            
            podcastImageView.sd_setImage(with: url, completed: nil)
            
        }
    }
    
    
    
    
    
}
