//
//  MainHomeData.swift
//  CoreaFlamencoIOS
//
//  Created by Yun Song on 17/04/2019.
//  Copyright © 2019 Yun Song. All rights reserved.
//

import UIKit

struct MainHomeData  {
    var image : String!
    var path : String!
    var title : String!
    var number : String!
    
    init( title : String, path:String , image :String, number: String) {
        self.title = title
        self.path = path
        self.image = image
        self.number = number
        
    }
}
