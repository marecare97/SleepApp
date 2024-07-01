//
//  PrimaryTextField.swift
//  SleepApp
//
//  Created by Marko Sentivanac on 27.6.24..
//

import SwiftUI
import SFSafeSymbols

struct PrimaryTextField: View {
    
    enum TextFieldStyle {
        case emailField
        case passwordField
    }
    
    @State var placeholderText = ""
    @Binding var textFieldText: String
    var textFieldStyle: TextFieldStyle
    @Binding var errorMessage: String
    
    var body: some View {
        VStack {
            HStack {
                
                Image(systemSymbol: symbolType(for: textFieldStyle))
                
                if textFieldStyle == .passwordField {
                    SecureField(placeholderText, text: $textFieldText)
                } else {
                    TextField(placeholderText, text: $textFieldText)
                        .keyboardType(keyboardType(for: textFieldStyle))
                        .textInputAutocapitalization(.never)
                }
            }
            .padding(EdgeInsets(top: 0, leading: 6, bottom: 0, trailing: 6))
            .frame(minWidth: 0, maxWidth: .infinity)
            .frame(height: 55)
            .border(Col.secondaryColor.swiftUIColor, width: 1)
            
            if errorMessage != "" {
                HStack {
                    Text(errorMessage)
                        .padding(.vertical, 5)
                        .fontWeight(.semibold)
                        .font(.subheadline)
                        .foregroundStyle(.red)
                    
                    Spacer()
                }
            }
        }
    }
    
    private func symbolType(for style: TextFieldStyle) -> SFSymbol {
        switch style {
        case .emailField:
            return .envelope
        case .passwordField:
            return .lock
        }
    }
    
    private func keyboardType(for style: TextFieldStyle) -> UIKeyboardType {
        switch style {
        case .emailField:
            return .emailAddress
        case .passwordField:
            return .default
        }
    }
}
