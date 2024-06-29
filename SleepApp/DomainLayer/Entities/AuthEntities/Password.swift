//
//  Password.swift
//  SleepApp
//
//  Created by Marko Sentivanac on 29.6.24..
//

import Foundation

struct Password {
    let rawValue: String
    
    init?(_ rawValue: String) {
        guard rawValue.count > 7 else {
            return nil
        }
        
        self.rawValue = rawValue
    }
}
