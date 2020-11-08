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
        Item(title: "Besom Lemon Joice", price: "$25.99", discount: "7$", image: "p1"),
        Item(title: "Besom Lemon Joice", price: "$25.99", discount: "7$", image: "p1")
        
    ]

    
    var body: some View {
        ZStack{
            VStack {
                HStack {
                    Button(action: {}) {
                        Image(systemName: "line.horizontal.3.decrease")
                            .font(.system(size: 24, weight:
                                            .heavy))
                            .foregroundColor(.primary)
                    }
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(spacing: 20){
                            ForEach(items){item in
                                // Card View...
                            }
                        }
                    }
                    
                    Button(action: {}) {
                        Image(systemName: "bag")
                            .font(.system(size: 24, weight:
                                            .heavy))
                            .foregroundColor(.primary)
                    }
                }
            }
            Text("Besom")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
        }
    }
}

// Model and Model data

