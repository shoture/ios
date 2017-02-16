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
import RealmSwift


class Article: Object, Mappable{
    
    // Fields	
    
    var id = RealmOptional<Int>()
    dynamic var articleName: String?
    dynamic var subtitle: String?
    dynamic var profileImageURL: String?
    dynamic var publishDate: NSDate?
    var viewCount = RealmOptional<Int>()
    dynamic var articleURL: String?
    
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    // Mappable implementation
    
    func mapping(map: Map) {
        
        id <- map["id"]
        articleName <- map["article_name"]
        subtitle <- map["subtitle"]
        profileImageURL <- map["cover_image_url"]
        publishDate <- map["publish_date"]
        viewCount <- map["view_count"]
        articleURL <- map["article_url"]
    }
    

    func persist(articles:[Article]){
        DispatchQueue(label: "background").async {
            autoreleasepool{
                let realm = try! Realm()
                try! realm.write {
                    for a in articles{
                         realm.add(a)
                    }
                }
            }
        }
    }
}
