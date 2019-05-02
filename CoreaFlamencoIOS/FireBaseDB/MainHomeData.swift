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

    init( _ image : String , _ path :String , _ title : String , _ number :String) {
        self.image = image
        self.path = path
        self.title = title
        self.number = number
        
    }
}

