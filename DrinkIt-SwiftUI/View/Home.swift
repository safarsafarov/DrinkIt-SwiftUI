//
//  Home.swift
//  DrinkIt-SwiftUI
//
//  Created by Safar Safarov on 2020/11/7.
//

import SwiftUI

struct Home: View {
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
                    
                    Spacer()
                    
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

