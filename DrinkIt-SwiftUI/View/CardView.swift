//
//  CardView.swift
//  DrinkIt-SwiftUI
//
//  Created by Safar Safarov on 2020/11/8.
//

import SwiftUI

struct CardView: View {
    var item: Item
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 15) {
                Text(item.title)
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                Text(item.price)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                
                Button(action: {}) {
                    Text("Buy Now")
                        .fontWeight(.heavy)
                        .foregroundColor(Color(item.image))
                        .padding(.vertical)
                        .padding(.horizontal, 25)
                        .background(Color.white)
                        .cornerRadius(15)
                }
                .padding()
            }
            
            
            Spacer(minLength: 0)
            
            Image(item.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: UIScreen.main.bounds.height / 3)
        }
        .padding()
        .background(Color(item.image))
        .cornerRadius(25)
    }
}
