//
//  MainTabBarController.swift
//  MyPodcasts
//
//  Created by 洪森達 on 2018/9/9.
//  Copyright © 2018年 sen. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    
    override func viewDidLoad() {
       
        tabBar.tintColor = .purple
        UINavigationBar.appearance().prefersLargeTitles = true
        setupViewController()
   
    }
    
    //MARK:- Setup Function
    
    func setupViewController(){
        viewControllers = [
            generateNavigationController(with: PodcastsSearchController(), title: "Search", image: "search"),
            generateNavigationController(with: ViewController(), title: "Favorites", image: "favorites"),
            generateNavigationController(with: ViewController(), title: "Downloads", image: "downloads")
        ]
        
    }
    
    //MARK:- Helper Functions
    
    
    
    
    fileprivate func generateNavigationController(with rootViewController: UIViewController , title: String , image: String) -> UIViewController {
     
        
        let navController = UINavigationController(rootViewController: rootViewController)
            rootViewController.navigationItem.title = title
//            navController.navigationBar.prefersLargeTitles = true
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(named: image)
        
        return navController

    }
    
    
    
    
    
}
