//
//  BoardData.swift
//  CoreaFlamencoIOS
//
//  Created by Yun Song on 17/04/2019.
//  Copyright © 2019 Yun Song. All rights reserved.
//

import Foundation

struct BoardData {
    var title : String!
    var body : String!
    var date : String!
    var image1 : String!
    var image2 : String!
    var image3 : String!
    var number : String!
    
    
    init(_ title : String , _ body : String, _ date : String, _ image1 : String, _ image2 : String, _ image3 : String , _ number : String) {
        self.title = title
        self.body = body
        self.date = date
        self.image1 = image1
        self.image2 = image2
        self.image3 = image3
        self.number = number
    }
    
}

