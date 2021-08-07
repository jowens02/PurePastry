//
//  ContentView.swift
//  Shared
//
//  Created by Jheanelle Owens on 04/08/2021.
//

import UserNotifications
import SwiftUI
import CoreLocation

struct NotificationView: View {
    var body: some View {
        VStack {
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

struct StartView: View {
    var body: some View {
        
        NavigationView {
            
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
                
                NavigationLink(
                    destination: NotificationView(),
                    label: {
                        Text("Get Started")
                        .bold()
                            
                    })
            }
    }
    
   
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
