//
//  ChatApp.swift
//  Chat
//
//  Created by User on 2023/1/30.
//

import SwiftUI

import Parse

//@UIApplicationMain
class AppDelegate: NSObject, UIApplicationDelegate {
    private func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
            let parseConfig = ParseClientConfiguration {
                $0.applicationId = "APPLICATION_ID"
                $0.clientKey = "skxu1"
                $0.server = "http://localhost:1337/parse"
            }
            Parse.initialize(with: parseConfig)
        print("app set config ok")
            return true
    }
    
    func applicationDidReceiveMemoryWarning(_ application: UIApplication) {
        print("log-DidReceiveMemoryWarning")
    }
}


@main
struct ChatApp: App {
    var body: some Scene {
        WindowGroup {
            LoginView(
//                didCompleteLoginProcess: {}
            )
        }
    }
}
