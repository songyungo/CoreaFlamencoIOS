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
    var storage: Storage!
    var storageRef : StorageReference!
    
    override init() {
        ref = Database.database().reference()
        storage = Storage.storage(url: "gs://coreaflamencoinfo-6e556.appspot.com/")
        storageRef = storage.reference()
    }

    
    
//    func post( param : [String: String] ){
//        ref.updateChildValues(param)
//    }
    // admin board
    // write
    // -class
    func writeClassBoard(_ title : String , _ body : String ,_  image1 : String,_ image2 : String, _ image3 : String,_ num : String , _ date : String) ->Bool{

        
        let post = ["title": title , "body" : body, "image1" : image1 ,
                    "image2" : image2 , "image3" : image3, "num" : num , "date" : date ]
        
        ref.child("class").child("ClassList").child(num).setValue(post)
        
        
        
        return true
    }
    // -shop
    func writeShopBoard( title : String , _ body : String ,_  image1 : String,_ image2 : String, _ image3 : String,_ num : String , _ date : String)->Bool{
        let post = ["title": title , "body" : body, "image1" : image1 ,
                    "image2" : image2 , "image3" : image3, "num" : num , "date" : date ]
        
        ref.child("shop").child("shoplist").child(num).setValue(post)
        return true
    }
    
    // -performance
    func writePerformanceBoard( title : String , _ body : String ,_  image1 : String,_ image2 : String, _ image3 : String,_ num : String , _ date : String)->Bool{
        let post = ["title": title , "body" : body, "image1" : image1 ,
                    "image2" : image2 , "image3" : image3, "num" : num , "date" : date ]
        
        ref.child("perfomence").child("perfomencelist").child(num).setValue(post)
        return true
    }
    
    //
    
    // rewrite
    // -class
    func rewriteClassBoard( title : String , _ body : String ,_  image1 : String,_ image2 : String, _ image3 : String,_ num : String , _ date : String)->Bool{
        
    
        let post = ["title": title , "body" : body, "image1" : image1 ,
                    "image2" : image2 , "image3" : image3, "num" : num , "date" : date ]
        
        ref.child("class").child("ClassList").child(num).setValue(post)
        
        return true
    }
    // -shop
    func rewriteShopBoard( title : String , _ body : String ,_  image1 : String,_ image2 : String, _ image3 : String,_ num : String , _ date : String)->Bool{
        
        let post = ["title": title , "body" : body, "image1" : image1 ,
                    "image2" : image2 , "image3" : image3, "num" : num , "date" : date ]
        
        ref.child("shop").child("shoplist").child(num).setValue(post)
        
        return true
    }
    
    // -performance
    func rewritePerformanceBoard( title : String , _ body : String ,_  image1 : String,_ image2 : String, _ image3 : String,_ num : String , _ date : String)->Bool{
        
        let post = ["title": title , "body" : body, "image1" : image1 ,
                    "image2" : image2 , "image3" : image3, "num" : num , "date" : date ]
        
        ref.child("perfomence").child("perfomencelist").child(num).setValue(post)
        return true
    }
    
    
    // delete
    // -class
    func deleteClassBoard( title : String , _ body : String ,_  image1 : String,_ image2 : String, _ image3 : String,_ num : String , _ date : String)->Bool{
        
        ref.child("class").child("ClassList").child(num).removeValue()
        
        return true
    }
    
    // -shop
    func deleteShopBoard( title : String , _ body : String ,_  image1 : String,_ image2 : String, _ image3 : String,_ num : String , _ date : String)->Bool{
        
        ref.child("shop").child("shoplist").child(num).removeValue()
        return true
    }
    
    // -performance
    func deletePerformance( title : String , _ body : String ,_  image1 : String,_ image2 : String, _ image3 : String,_ num : String , _ date : String)->Bool{
        
        ref.child("perfomence").child("perfomencelist").child(num).removeValue()
        return true
    }
    
    // uploadStorge
    func uploadImg(_ path : String , _ img : String)->Bool{
        // File located on disk
        
        // File located on disk
        let localFile = URL(string: img)!
        
        // Create a reference to the file you want to upload
        let imgRef = storageRef.child("\(path)/\(img)")
        
        // Upload the file to the path "images/rivers.jpg"
        let uploadTask = imgRef.putFile(from: localFile, metadata: nil) { metadata, error in
            guard let metadata = metadata else {
                // Uh-oh, an error occurred!
                return
            }
            // Metadata contains file metadata such as size, content-type.
            let size = metadata.size
            // You can also access to download URL after upload.
            self.storageRef.downloadURL { (url, error) in
                guard let downloadURL = url else {
                    // Uh-oh, an error occurred!
                    return
                }
            }
        }
       
        return true
    }
    
    // deleteStorge
    func delteStorge(_ path : String , _ img : String) -> Bool{
        
        // Create a reference to the file to delete
        let imgRef = storageRef.child("\(path)/\(img)")
        
        // Delete the file
        imgRef.delete { error in
            if let error = error {
                // Uh-oh, an error occurred!
                
            } else {
                // File deleted successfully
            }
        }
        return true
    }
    // view
    // home
    func loadHomeList(complete : @escaping ( _ succeed : Bool, _ mainHomeData :[MainHomeData])-> Void){
        var succeed : Bool!
        
        var mainInfo : MainHomeData!
        
        var mainList : [MainHomeData] = []
        
       
        ref.child("home").observeSingleEvent(of: .value, with: {(snapshot) in
            
            let value = snapshot.value as? NSDictionary
 
//            let user = User(username: username)
            // 연속 조회
            for i in 0...9 {
                let arr = value?[i] as? Array ?? [""]
                
                
                
                
            }
            
            
            
        }){
            (error) in
            succeed = false
        }
        
        
        
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

