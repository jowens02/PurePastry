//
//  AboutView.swift
//  PurePastry
//
//  Created by Jheanelle Owens on 23/08/2021.
//

import SwiftUI

struct MissionView: View {
    var body: some View {
        ZStack {
            Color(.brown).edgesIgnoringSafeArea(.all)
            VStack {
                
                Text("In pursuit of pure pastry")
                    .foregroundColor(.red)
                    .font(Font.custom("Metropolis-Bold", size: 25))
                    .padding()
                Text("Pure Pastry’s mission is to bake simple, practical and inspiring pastry. We are a unique, retail & wholesale bakery that is organic, locally sourced and home grown. From our warm kitchen, we offer exquisite pastry that can cater to any dietary restriction. We are a small business purely dedicated to the integrity of our clients, to the pastry we make, and the footprint we leave on this earth. Through our beautiful handcrafted confections, let us help you enjoy the simple act of eating cake together.")
                    .foregroundColor(.white)
                    .font(Font.custom("Metropolis-Medium", size: 23))
                    .padding()
            }
            
            
        }
    }
}

struct OwnerView: View {
    var body: some View {
        ZStack {
            Color(.brown).edgesIgnoringSafeArea(.all)
            VStack {
                
                Text("Kim Gregory")
                    .foregroundColor(.red)
                    .font(Font.custom("Metropolis-Bold", size: 25))
                    .padding()
                Text("Pastry Chef, Owner")
                    .foregroundColor(.red)
                    .font(Font.custom("Metropolis-Bold", size: 25))
                    .padding()
                Image("kim")
                    .resizable()
                    .padding()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 300)
            }
            
            
        }
    }
}

struct AboutView: View {
    var body: some View {
        TabView {
            MissionView()
            
            OwnerView()
        }
        .tabViewStyle(PageTabViewStyle())
        
    }
}
struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
