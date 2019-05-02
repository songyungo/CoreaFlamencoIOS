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

    
    // admin board
    // write
    // -class
    func writeClassBoard(_ title : String , _ body : String ,_  image1 : String,_ image2 : String, _ image3 : String,_ num : String , _ date : String) ->Bool{
        
        return true
    }
    // -shop
    func writeShopBoard( title : String , _ body : String ,_  image1 : String,_ image2 : String, _ image3 : String,_ num : String , _ date : String)->Bool{
        return true
    }
    
    // -performance
    func writePerformanceBoard( title : String , _ body : String ,_  image1 : String,_ image2 : String, _ image3 : String,_ num : String , _ date : String)->Bool{
        
        return true
    }
    
    //
    
    // rewrite
    // -class
    func rewriteClassBoard( title : String , _ body : String ,_  image1 : String,_ image2 : String, _ image3 : String,_ num : String , _ date : String)->Bool{
        
        return true
    }
    // -shop
    func rewriteShopBoard( title : String , _ body : String ,_  image1 : String,_ image2 : String, _ image3 : String,_ num : String , _ date : String)->Bool{
        
        return true
    }
    
    // -performance
    func rewritePerformanceBoard( title : String , _ body : String ,_  image1 : String,_ image2 : String, _ image3 : String,_ num : String , _ date : String)->Bool{
        return true
    }
    
    
    // delete
    // -class
    func deleteClassBoard( title : String , _ body : String ,_  image1 : String,_ image2 : String, _ image3 : String,_ num : String , _ date : String)->Bool{
        return true
    }
    
    // -shop
    func deleteShopBoard( title : String , _ body : String ,_  image1 : String,_ image2 : String, _ image3 : String,_ num : String , _ date : String)->Bool{
        return true
    }
    
    // -performance
    func deletePerformance( title : String , _ body : String ,_  image1 : String,_ image2 : String, _ image3 : String,_ num : String , _ date : String)->Bool{
        return true
    }
    
    // uploadStorge
    func uploadImg(_ path : String , _ img : String)->Bool{
        return true
    }
    
    // deleteStorge
    func delteStorge(_ path : String , _ img : String) -> Bool{
        
        
        return true
    }
    // view
    // home
    func loadHomeList(complete : @escaping ( _ succeed : Bool, _ mainHomeData :[MainHomeData])-> Void){
        var succeed : Bool!
        
        var mainInfo : MainHomeData!
        
        var mainList : [MainHomeData] = []
        
        complete(succeed, mainList)
    }
    
    // class list
    func loadClassBoardList( complete : @escaping ( _ succeed : Bool, _ classlist :[BoardListData])-> Void){
        var succeed : Bool!
        
        var classInfo : BoardListData!
        
        var classList : [BoardListData] = []
        
        complete(succeed, classList)
        
        
    }
    
    // class detail
    func loadClassDeatil( _ number : String, _ title :String, complete : @escaping(_ succeed: Bool, _ boardData : BoardData)-> Void ){
        var succeed: Bool!
        
        
        var boardData : BoardData!
        
        complete (succeed, boardData)
        
        
        
    }
    
    // shop list
    func loadShopBoardList( complete : @escaping ( _ succeed : Bool, _ shoplist :[BoardListData])-> Void){
        var succeed : Bool!
        
        var shopInfo : BoardListData!
        
        var shoplist :[BoardListData] = []
        
        
        complete(succeed, shoplist)
        
    }
    // shop detail
    func loadShopDetail(_ number : String, _ title:String, complete : @escaping(_ succeed: Bool, _ boardData : BoardData)-> Void  ){
        var succeed : Bool!
        
        var boardData : BoardData!
        
        complete (succeed, boardData)
    }
    // performance list
    func loadPerformaceList(complete : @escaping ( _ succeed : Bool, _ performanceList :[BoardListData])-> Void) {
        var succeed : Bool!
        
        var performanceInfo : BoardListData!
        
        var performancelist :[BoardListData] = []
        
        
        
        complete(succeed, performancelist)
    }
    
    // performance detail
    
    func loadPerformanceDetail(_ number: String, _ title:String, complete : @escaping(_ succeed: Bool, _ boardData : BoardData)-> Void ) {
        var succeed : Bool!
        
        var boardData : BoardData!
        
        complete (succeed, boardData)
    }
    
}

