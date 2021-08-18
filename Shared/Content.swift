//
//  ContentView.swift
//  Shared
//
//  Created by Jheanelle Owens on 04/08/2021.
//

import UserNotifications
import SwiftUI
import CoreLocation

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ContentView: View {
    @AppStorage("shouldShowOnboarding") var  shouldShowOnboarding: Bool = true
    var body: some View {
        NavigationView {
            VStack {
                Text("You are in the main app now")
            }
            .navigationTitle("Home")
        }
        .fullScreenCover(isPresented: $shouldShowOnboarding, content: {
            OnboardingView(shouldShowOnboarding: $shouldShowOnboarding)
        })
    }
}
