//
//  MainTabView.swift
//  MeTube
//
//  Created by Eric Barnes - iOS on 12/10/23.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView(selection: .constant(1),
                content:  {
            // HOME
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            // SHORTS
            Text("Shorts")
                .tabItem {
                    Image(systemName: "lasso.badge.sparkles")
                    Text("Shorts")
                }
            
            // ADD POST
            Text("Add Post")
                .tabItem {
                    Image(systemName: "plus.circle")
                }
            
            // SUBSCRIPTIONS
            Text("Subscriptions")
                .tabItem {
                    Image(systemName: "play.square.stack")
                    Text("Subscriptions")
                }
            
            // YOU
            Text("You")
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("You")
                }
        })
    }
}

#Preview {
    MainTabView()
}
