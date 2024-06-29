//
//  LoginViewModel.swift
//  SleepApp
//
//  Created by Marko Sentivanac on 27.6.24..
//

import Foundation
import FirebaseAuth

enum AuthenticationState {
    case authenticating
    case authenticated
    case unauthenticated
}

final class LoginViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    @Published var emailErrorMessage = ""
    @Published var passwordErrorMessage = ""
    @Published var errorMessage = ""
    @Published var user: User?
    @Published var authenticationState: AuthenticationState = .unauthenticated
}

// MARK: Login
extension LoginViewModel {
    
    @MainActor
    func login() async -> Bool {
        authenticationState = .authenticating
        do {
            let authResult = try await Auth.auth().signIn(withEmail: email, password: password)
            user = authResult.user
            print("User, \(authResult.user.uid) signed in")
            authenticationState = .authenticated
            return true
        } catch {
            print(error)
            errorMessage = error.localizedDescription
            authenticationState = .unauthenticated
            return false
        }
    }
}

// MARK: Logout
extension LoginViewModel {
    func logout() async -> Bool {
        return false
    }
}
