//
//  BoardList.swift
//  CoreaFlamencoIOS
//
//  Created by Yun Song on 02/05/2019.
//  Copyright © 2019 Yun Song. All rights reserved.
//

import Foundation

struct BoardListData {
    var title : String!
    var image : String!
    var number : String!
    
    
    init(_ title : String, _ image : String, _ number : String) {
        self.title = title
        self.image = image
        self.number = number
    }
}

