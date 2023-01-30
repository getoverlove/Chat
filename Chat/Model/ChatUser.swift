//
//  ChatUser.swift
//  demo
//
//  Created by User on 2023/1/8.
//

import SwiftUI

struct ChatUser: Identifiable {
    var id: String { uid }
    let uid, email, profileImageUrl: String
    
    init(data: [String: Any]) {
//        let email_short = email.replacingOccurrences(of: "@gmail.com", with: "")  //替换长语句的方法 and 替换名字
        self.uid = data["uid"] as? String ?? ""
        self.email = data["email"] as? String ?? ""
        self.profileImageUrl = data["profileImageURL"] as? String ?? ""
    }
}
