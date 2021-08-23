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
        Group {
            ContentView()
        }
    }
}


struct ContentView: View {
    @AppStorage("shouldShowOnboarding") var  shouldShowOnboarding: Bool = true
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "bookmark")
                    Text("menu")
                }
            Text("Map")
                .tabItem {
                    Image(systemName: "map")
                    Text("map")
                }
            Text("Schedule")
                .tabItem {
                    Image(systemName: "clock")
                    Text("schedule")
                }
            
            AboutView()
                .tabItem {
                    Image(systemName: "info")
                    Text("about")
                }
        }
        .fullScreenCover(isPresented: $shouldShowOnboarding, content: {
            OnboardingView(shouldShowOnboarding: $shouldShowOnboarding)
        })
    }
}
