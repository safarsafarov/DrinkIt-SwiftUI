//
//  Home.swift
//  DrinkIt-SwiftUI
//
//  Created by Safar Safarov on 2020/11/7.
//

import SwiftUI

struct Home: View {
    
   @State var items = [
    Item(title: "Besom Lemon Joice", price: "$25.99", discount: "7$", image: "p1"),
        Item(title: "Besom Lemon Joice", price: "$25.99", discount: "7$", image: "p2"),
        Item(title: "Besom Lemon Joice", price: "$25.99", discount: "7$", image: "p3")
        
    ]
    
    @ObservedObject var tabData : TabViewModel
    var animation:  Namespace.ID
    
    var body: some View {
        VStack{
            ZStack {
                HStack {
                    Button(action: {}) {
                        Image(systemName: "line.horizontal.3.decrease")
                            .font(.system(size: 24, weight:
                                            .heavy))
                            .foregroundColor(.primary)
                    }
                    
                    Spacer()
                    
                    Button(action: {}) {
                        Image(systemName: "bag")
                            .font(.system(size: 24, weight:
                                            .heavy))
                            .foregroundColor(.primary)
                    }
                    
                }
                
                Text("DrinkIt")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.primary)
            }
            .padding()
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    ForEach(items){item in
                        // Card View...
                        CardView(item: item, tabData: tabData, animation: animation)
                            .padding(.trailing, 15)
                            .padding(.leading, 15)
                    }
                }
            }
            
        }
    }
}

// Model and Model data

