//
//  FireBaseRealTimeDB.swift
//  CoreaFlamencoIOS
//
//  Created by Yun Song on 17/04/2019.
//  Copyright © 2019 Yun Song. All rights reserved.
//

import Firebase

class FireBaseRealTimeDB: NSObject {
    
    var ref : DatabaseReference!
    
    override init() {
        ref = Database.database().reference()
    }
    

}

