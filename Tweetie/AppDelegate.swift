//
//  AppDelegate.swift
//  Tweetie
//
//  Created by Duc Tran on 4/18/16.
//  Copyright © 2016 Developers Academy. All rights reserved.
//

import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: Any]?) -> Bool {
        FIRApp.configure()
        
        return true
    }
}

