//
//  TabBarView.swift
//  DrinkIt-SwiftUI
//
//  Created by Safar Safarov on 2020/11/7.
//

import SwiftUI

struct TabBarView: View {
    
    var body: some View {
        TabView {
            Text("Home")
                .tabItem{
                    Image(systemName: "house")
                }
            Text("Search")
                .tabItem{
                    Image(systemName: "magnifyingglass")
                }
            Text("Linked")
                .tabItem{
                    Image(systemName: "suit.heart")
                }
            Text("Settings")
                .tabItem{
                    Image(systemName: "person")
                }
        }
    }
}
