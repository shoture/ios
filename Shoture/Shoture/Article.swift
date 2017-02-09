//
//  Article.swift
//  Shoture
//
//  Created by faff on 2017/2/7.
//  Copyright © 2017年 Shoture. All rights reserved.
//

import Foundation

import ObjectMapper
import Alamofire
import AlamofireObjectMapper

class Article: Mappable{
    
    // Fields
    
    var id: Int?
    var articleName: String?
    var subtitle: String?
    var coverImageURL: String?
    var publishDate: NSDate?
    var viewCount: Int?
    var articleURL: String?
    
    // Mappable implementation
    
    required init?(map: Map){
        
    }
    
    func mapping(map: Map) {
        
        id <- map["id"]
        articleName <- map["article_name"]
        subtitle <- map["subtitle"]
        coverImageURL <- map["cover_image_url"]
        publishDate <- map["publish_date"]
        viewCount <- map["view_count"]
        articleURL <- map["article_url"]
    }
    

}
