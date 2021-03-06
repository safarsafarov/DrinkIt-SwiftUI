//
//  TabBarView.swift
//  DrinkIt-SwiftUI
//
//  Created by Safar Safarov on 2020/11/7.
//

import SwiftUI

struct TabBarView: View {
    @StateObject var tabData = TabViewModel()
    @Namespace var animation
    var body: some View {
        ZStack{
            TabView {
                Home(tabData: tabData, animation: animation)
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
            .accentColor(.black)
            
            if tabData.isDetail {
                Detail(tabData: tabData, animation: animation)
            }
        }
    }
}
