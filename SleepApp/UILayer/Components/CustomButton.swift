//
//  CustomButton.swift
//  SleepApp
//
//  Created by Marko Sentivanac on 27.6.24..
//

import SwiftUI

struct CustomButton: View {
    
    var buttonTitle: String
    var buttonAction: () -> Void
    var buttonForegroundColor: Color
    var buttonBackgroundColor: Color
    
    var body: some View {
        Button(buttonTitle) {
            buttonAction()
        }
        .frame(minWidth: 0, maxWidth: .infinity)
        .frame(height: 50)
        .foregroundStyle(buttonForegroundColor)
        .background(buttonBackgroundColor)
        .border(.gray, width: 1)
        .clipShape(RoundedRectangle(cornerSize: CGSize(width: 30, height: 10)))
    }
}

#Preview {
    CustomButton(buttonTitle: "Click", buttonAction: {} ,buttonForegroundColor: .black, buttonBackgroundColor: .gray)
}
