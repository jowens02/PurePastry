//
//  ContentView.swift
//  Shared
//
//  Created by Jheanelle Owens on 04/08/2021.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        
        NavigationView {
            
            VStack {
                Image("logox2")
                    .resizable()
                    .aspectRatio(
                        contentMode: .fit)
                    .offset(y: -60)
                Text("Welcome to Pure Pastry Tracker")
                    .font(.title)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .padding(.all)
                    .frame(width: /*@START_MENU_TOKEN@*/420.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                    .background(Color.orange)
                    .offset(y: -60)
                
                Text("Thank you for supporting our business")
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .offset(y: -60)
                
                NavigationLink(
                    destination:/*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                    label: {
                        Text("Get Started")
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
