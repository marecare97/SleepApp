//
//  View+TextFieldDismiss.swift
//  SleepApp
//
//  Created by Marko Sentivanac on 27.6.24..
//

import SwiftUI

extension View {
    
    func endTextEditing(count: Int = 1) -> some View {
        self
            .contentShape(Rectangle())
            .onTapGesture(count: count, perform: {
                UIApplication.shared.sendAction(
                    #selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
            })
    }
}
