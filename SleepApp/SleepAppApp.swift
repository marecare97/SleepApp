//
//  SleepAppApp.swift
//  SleepApp
//
//  Created by Marko Sentivanac on 26.6.24..
//

import SwiftUI

typealias Col = Asset.Colors
typealias Img = Asset.Images

@main
struct SleepAppApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            LoginView()
        }
    }
}
