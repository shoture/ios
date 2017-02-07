//
//  ViewController.swift
//  Shoture
//
//  Created by faff on 2017/2/7.
//  Copyright © 2017年 Shoture. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var cachedArticles: [Article]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Article.fetchArticles{ response in
            self.cachedArticles = response.result.value
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

