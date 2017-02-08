//
//  ShotureAPI.swift
//  Shoture
//
//  Created by faff on 2017/2/7.
//  Copyright © 2017年 Shoture. All rights reserved.
//

import Foundation
import Alamofire

class ShotureAPI{
    static let sharedInstance = ShotureAPI()
    
    // API base URL
    let apiBaseURL = "http://127.0.0.1:8000/"
    
    var articleListEndpoint: String{
        return apiBaseURL + "articles"
    }
    
    // Fetch article
    func getArticles(completion: @escaping (DataResponse<[Article]>) -> Void){
        let URL = ShotureAPI.sharedInstance.articleListEndpoint
        Alamofire.request(URL).responseArray(completionHandler: completion)
    }
}
