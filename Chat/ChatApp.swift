//
//  ChatApp.swift
//  Chat
//
//  Created by User on 2023/1/30.
//

import SwiftUI

@main
struct ChatApp: App {
    var body: some Scene {
        WindowGroup {
            LoginView(didCompleteLoginProcess: {})
        }
    }
}
