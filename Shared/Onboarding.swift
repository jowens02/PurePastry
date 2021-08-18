//
//  Onboarding.swift
//  PurePastry
//
//  Created by Jheanelle Owens on 18/08/2021.
//

import Foundation
import SwiftUI


struct OnboardingView: View {
    @Binding var shouldShowOnboarding: Bool
    var body: some View {
        TabView {
            StartView()

            NotificationView()

            TrackLocationView(shouldShowOnboarding: $shouldShowOnboarding)
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct StartView: View {
    var body: some View {
            
            VStack {
                Image("logox2")
                    .resizable()
                    .aspectRatio(
                        contentMode: .fit)
                    .offset(y: -60)
                Text("Welcome to Kim Gregory     Pure Pastry Tracker")
                    .font(.title)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .padding(.all)
                    .frame(width: /*@START_MENU_TOKEN@*/420.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                    .background(Color.orange)
                    .offset(y: -60)
                
                Text("Pure Pastry is Pure Love")
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .offset(y: -60)
                
            }
    }
}

struct NotificationView: View {
    var body: some View {
        
        VStack {
            Image("pastry")
                .resizable()
                .aspectRatio(
                    contentMode: .fit)
                .offset(y: -50)
            Text("Know when Sweets nearby")
                .font(.title)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .padding(.all)
                .frame(width: /*@START_MENU_TOKEN@*/420.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                .background(Color.orange)
                .offset(y: -50)
            
            Button("Allow Notifications") {
                UNUserNotificationCenter.current()
                .requestAuthorization(options: [.alert, .badge, .sound]){ success, error in
                        if success {
                            print("SUCCESS")
                        } else if let error = error {
                            print(error.localizedDescription)
                        }
                    }
            }
          
            
            Button("Schedule Notifications") {
                let content = UNMutableNotificationContent()
                content.title = "Sweets Nearby!"
                content.subtitle = "Check the map to see how close you are!"
                content.sound = UNNotificationSound.default
                content.badge = 1
                
                let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
                
                let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
                
                UNUserNotificationCenter.current().add(request)
            }
         
           
        }
        
        .onAppear() {
            UIApplication.shared.applicationIconBadgeNumber = 0
        }
    
    }
}

struct TrackLocationView: View {
    @Binding var shouldShowOnboarding: Bool
    
    
    var body: some View {
        VStack {
            Image("map")
                .resizable()
                .aspectRatio(
                    contentMode: .fit)
                .offset(y: -45)
            Text("Help us keep track")
                .font(.title)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .padding(.all)
                .frame(width: /*@START_MENU_TOKEN@*/420.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                .background(Color.orange)
                .offset(y: -25)
            
            Button("Allow App to Track Location") {
                UNUserNotificationCenter.current()
                .requestAuthorization(options: [.alert, .badge, .sound]){ success, error in
                        if success {
                            print("SUCCESS")
                        } else if let error = error {
                            print(error.localizedDescription)
                        }
                    }
            }
            
            
            Button(action: {
                shouldShowOnboarding.toggle()
            }) {
                Text("Get Started")
                    .frame(width: 200, height: 50)
                    .foregroundColor(Color.white)
                    .background(Color.green)
                    .cornerRadius(6)
            }
            .offset(y: 40)
        }
    }
}





