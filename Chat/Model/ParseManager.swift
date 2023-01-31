//
//  FirebaseManager.swift
//  demo
//
//  Created by User on 2023/1/8.
//

import SwiftUI
import Parse
//import Firebase
//import FirebaseStorage
//import FirebaseFirestore

//作用是避免preview崩溃
//如果想加快filebase编译速度，详细见SwiftUI Firebase Chat04, 6:33
class ParseManager: NSObject {
//    let auth: Auth
//    let storage: Storage
//    let firestore: Firestore
    
    static let shared = FirebaseManager()
    let parseConfig = ParseClientConfiguration {
        $0.applicationId = "APPLICATION_ID"
        $0.clientKey = "skxu1"
        $0.server = "http://localhost:1337/parse"
    }
    
    override init() {
        Parse.initialize(with: parseConfig)
        print("app set config ok")
//        FirebaseApp.configure()
        
//        self.auth = Auth.auth()
//        self.storage = Storage.storage()
//        self.firestore = Firestore.firestore()
        
        super.init()
    }
    
}

