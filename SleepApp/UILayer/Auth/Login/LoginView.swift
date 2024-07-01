//
//  LoginView.swift
//  SleepApp
//
//  Created by Marko Sentivanac on 27.6.24..
//

import SwiftUI

struct LoginView: View {
    
    typealias LoginViewStr = TK.Login
    
    @StateObject var viewModel = LoginViewModel()
    
    var body: some View {
        loginForm
            .overlay {
                if viewModel.authenticationState == .authenticating {
                    ProgressView()
                }
            }
    }
    
    var loginForm: some View {
        VStack {
            Text(LoginViewStr.login)
                .font(.largeTitle)
                .foregroundStyle(Col.themeColor.swiftUIColor)
                .fontWeight(.bold)
            
            PrimaryTextField(
                placeholderText: LoginViewStr.email,
                textFieldText: $viewModel.email,
                textFieldStyle: .emailField,
                errorMessage: $viewModel.emailErrorMessage
            )
            
            PrimaryTextField(
                placeholderText: LoginViewStr.password,
                textFieldText: $viewModel.password,
                textFieldStyle: .passwordField,
                errorMessage: $viewModel.errorMessage
            )
            .padding(.vertical)
            
            CustomButton(
                buttonTitle: LoginViewStr.login,
                buttonAction: {
                    Task {
                        await viewModel.login()
                    }
                },
                buttonForegroundColor: .white,
                buttonBackgroundColor: Col.themeColor.swiftUIColor
            )
            
            HStack {
                Text(LoginViewStr.noAccount)
                Text(LoginViewStr.signUp)
                    .foregroundStyle(.blue)
                    .fontWeight(.bold)
                    .onTapGesture {
                        print("goes to register")
                    }
            }
            .padding(.vertical)
            
        }
        .endTextEditing()
        .padding(.horizontal)
    }
}

#Preview {
    LoginView()
}
