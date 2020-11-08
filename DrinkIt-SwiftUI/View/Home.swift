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
                        CardView(item: item)
                            .padding(.trailing, 20)
                            .padding(.leading, 20)
                    }
                }
            }
            
        }
    }
}

// Model and Model data

