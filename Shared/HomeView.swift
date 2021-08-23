//
//  HomeView.swift
//  PurePastry
//
//  Created by Jheanelle Owens on 23/08/2021.
//

import SwiftUI

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeView()
        }
    }
}


struct MenuPageView: View {
    let imageName: String
    let pastryName: String
    let description: String
    let cost: String
    
    var body: some View {
        ZStack {
            Color(.brown).edgesIgnoringSafeArea(.all)
            VStack {
                Image(imageName)
                    .resizable()
                    .padding()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 300)
        
                Text(pastryName)
                    .font(.system(size:25))
                    .foregroundColor(.white)
                    
                    
                Text(description)
                    .font(.system(size:15))
                    .padding(.horizontal)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                
                Text(cost)
                    .font(.system(size:15))
                    .foregroundColor(.white)
                    .padding(.horizontal)
            }
        }
    }
}

struct HomeView: View {
    var body: some View {
        
            NavigationView {
                TabView {
                    MenuPageView(
                        imageName: "pureo",
                        pastryName: "Pureo",
                        description: "a rich and dark chocolate sandwhich cookie generously filled w/ a vanilla creme center, this treat mimics the 'oreo' organically",
                        cost: "$5.75")
                    MenuPageView(
                        imageName: "haystacks",
                        pastryName: "Coconut Haystacks",
                        description: "our version of a classic macaroon- crunchy and chewy at the same time! naturally dairy and gluten free",
                        cost: "$3.25")
                    
                    MenuPageView(
                        imageName: "kowboy",
                        pastryName: "Kowboy Sandwhich Cookie",
                        description: "a comforting cookie w/ an extra creamy peanutbutter center & a tempting organic grape jam peeking through naturally gluten & dairy free",
                        cost: "$5.75")
                    
                    MenuPageView(
                        imageName: "persian",
                        pastryName: "Persian Love Cake",
                        description: "let enchanting ingredients of sultry cardamom, nutmeg, and hints of cinnamon spice whisk you away to exotic lands. infused with romatically gentle floral notes of rose water and adorned with dried flowers and pistachios naturally gluten free",
                        cost: "$8.75/4 inch individual round")
                    
                }
                .tabViewStyle(PageTabViewStyle())
                .navigationTitle("Forever Menu").font(Font.custom("Electro", size: 18))
            }
            
         }
        
}

