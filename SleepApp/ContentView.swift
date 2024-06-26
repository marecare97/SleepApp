//
//  ContentView.swift
//  SleepApp
//
//  Created by Marko Sentivanac on 26.6.24..
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("sleep")
                .textCase(.uppercase)
                .foregroundStyle(COL.themeColor.swiftUIColor)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
