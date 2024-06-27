//
//  ContentView.swift
//  SleepApp
//
//  Created by Marko Sentivanac on 26.6.24..
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Text("sleep")
                .textCase(.uppercase)
                .foregroundStyle(Col.themeColor.swiftUIColor)
        }
        .padding()
    }
}

#Preview {
    HomeView()
}
