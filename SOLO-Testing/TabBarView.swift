//
//  TabBarView.swift
//  SOLO-Testing
//
//  Created by Serena Huang on 2/13/24.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            NavigationView {
                HomeView()
            }
            .tag(0)
            .tabItem {
                Image(systemName: "house.fill")
                Text("Home")
            }
            
            NavigationView {
                ProfileView()
            }
            .tag(1)
            .tabItem {
                Image(systemName: "person.fill")
                Text("Profile")
            }
            
        }
    }
}

