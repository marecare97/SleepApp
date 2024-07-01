//
//  ValidatorFunctions.swift
//  SleepApp
//
//  Created by Marko Sentivanac on 1.7.24..
//

import Foundation

extension String {
    
    // MARK: Password validation
    var isValidPassword: Bool {
        let passwordRegex = "^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{8,}$"
        let passwordPredicate = NSPredicate(format: "SELF MATCHES %@", passwordRegex)
        return passwordPredicate.evaluate(with: self)
    }
    
    var passwordValidationError: String? {
        if self.count < 8 {
            return "Password must be at least 8 characters long."
        }
        if !NSPredicate(format: "SELF MATCHES %@", ".*[A-Za-z]+.*").evaluate(with: self) {
            return "Password must contain at least one letter."
        }
        if !NSPredicate(format: "SELF MATCHES %@", ".*\\d+.*").evaluate(with: self) {
            return "Password must contain at least one number."
        }
        return nil
    }
}

extension String {
    
    // MARK: Email validation
    func isValidEmail(email: String) -> Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailPredicate.evaluate(with: email)
    }
}
