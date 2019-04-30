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
    var image : String!
    var number : String!
    
    
    init( title : String, body:String , date :String , image :String, number: String) {
        self.title = title
        self.body = body
        self.date = date
        self.image = image
        self.number = number
        
    }
}
