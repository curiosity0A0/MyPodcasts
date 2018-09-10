//
//  PodcastSearchController.swift
//  MyPodcasts
//
//  Created by 洪森達 on 2018/9/9.
//  Copyright © 2018年 sen. All rights reserved.
//

import UIKit

class PodcastsSearchController: UITableViewController,UISearchBarDelegate{
    
    
    let podcasts = [
        Podcast(name: "Lets Build that App", artistName: "Brian Voong"),
        Podcast(name: "Some Podcast", artistName: "Some Author")
    ]
    
    let cellId = "cellId"
    
    let searchController = UISearchController(searchResultsController: nil)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        setupSearchBar()
        setupTabelView()
        
    
    }
    
    //MARK:- Setup Work
    
    fileprivate func setupSearchBar(){
        
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
        
        searchController.dimsBackgroundDuringPresentation = false
        searchController.searchBar.delegate = self
        
    }
    
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print(searchText)
        //later implement Alamofire to search iTunes API
    }
    
    
    
    fileprivate func setupTabelView(){
        tableView.tableFooterView = UIView()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
    }
    
    //MARK:- UITableView
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return podcasts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        
        let podcast = self.podcasts[indexPath.row]
        cell.textLabel?.text = "\(podcast.name)\n\(podcast.artistName)"
        cell.textLabel?.numberOfLines = -1
        cell.imageView?.image = UIImage(named: "appicons")
        
        return cell
    }
    
   
    
}
