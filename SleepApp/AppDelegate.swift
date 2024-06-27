//
//  AppDelegate.swift
//  SleepApp
//
//  Created by Marko Sentivanac on 27.6.24..
//

import UIKit
import FirebaseCore

final class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        FirebaseApp.configure()

        return true
    }
}
