//
//  EpisodesController.swift
//  MyPodcasts
//
//  Created by 洪森達 on 2018/9/11.
//  Copyright © 2018年 sen. All rights reserved.
//

import UIKit

class EpisodesController: UITableViewController {
    
    
    var podcast:Podcast? {
        
        didSet{
            navigationItem.title = podcast?.trackName
        }
    }
    
    fileprivate let cellId = "cellId"
    
    struct Episode {
        let title : String
    }
    
    var episodes = [
        Episode(title: "First Episode"),
        Episode(title: "second Episode"),
        Episode(title: "First Episode")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()

        setupTableView()
 
    }
    
    
    //MARK:- Setup Work
    
    fileprivate func setupTableView(){
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
        tableView.tableFooterView = UIView()
    }
    
    
    //MARK:- UITableView
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return episodes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        let episode = episodes[indexPath.row]
        cell.textLabel?.text = episode.title
        return cell
    }
    
    
    
    
    
    
    
    
    
}
