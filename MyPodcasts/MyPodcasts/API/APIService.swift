//
//  APIService.swift
//  MyPodcasts
//
//  Created by 洪森達 on 2018/9/10.
//  Copyright © 2018年 sen. All rights reserved.
//

import Foundation
import Alamofire

class APIService{
    
    //singleton over here
    
    static let shared = APIService()
    
    
    
    func fetchPodcasts(searchText: String ,completionHandler: @escaping ([Podcast]) -> ()){
        
        let url = "https://itunes.apple.com/search"
        let parameter = ["term": searchText,"media":"podcast"]
        
        Alamofire.request(url, method: .get, parameters: parameter, encoding: URLEncoding.default, headers: nil).responseData { (dataResponse) in
            if let err = dataResponse.error {
                print("Faild to contact yahoo",err)
                return
            }
            
            guard let data = dataResponse.data else { return }
            let dummyString = String(data: data, encoding: .utf8)
            do{
                
                let searchResult =  try JSONDecoder().decode(SearchResults.self, from: data)
                completionHandler(searchResult.results)
//                self.podcasts = searchResult.results
//                self.tableView.reloadData()
                
            }catch let decodeErr {
                print("Failed to decode:",decodeErr)
            }
            
        }
        
        
        
    }
    
    struct SearchResults: Decodable {
        let resultCount: Int
        let results: [Podcast]
        
    }
    
    
}
