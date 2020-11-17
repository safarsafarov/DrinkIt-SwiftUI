//
//  Detail.swift
//  DrinkIt-SwiftUI
//
//  Created by Safar Safarov on 2020/11/9.
//

import SwiftUI

struct Detail: View {
    @ObservedObject var tabData : TabViewModel
    // for hero animation...
    var animation: Namespace.ID
    @State var start = false
    @State var cart = 1
    var body: some View {
        VStack {
            
            VStack{
                ZStack {
                    HStack {
                        Button(action: {
                            withAnimation(Animation.easeIn(duration: 0.5)){
                                start.toggle()
                            }
                        }) {
                            Image(systemName: "arrow.left")
                                .font(.system(size: 24, weight:
                                                .heavy))
                                .foregroundColor(.white)
                        }
                        
                        Spacer()
                        
                        Button(action: {}) {
                            Image(systemName: "bag")
                                .font(.system(size: 24, weight:
                                                .heavy))
                                .foregroundColor(.white)
                        }
                        
                    }
                    
                    Text("DrinkIt")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(.primary)
                }
                .padding()
                
                ZStack {
                    Image(tabData.selectedItem.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .rotationEffect(.init(degrees: start ? -25 : 0), anchor: .bottom)
                        .offset(x: start ? 15 : 0, y: start ? -15 : 0)
                        .opacity(start ? 1 : 0)
                    Image(tabData.selectedItem.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .rotationEffect(.init(degrees: start ? 25 : 0), anchor: .bottom)
                        .offset(x: start ? -15 : 0, y: start ? -15 : 0)
                        .opacity(start ? 1 : 0)
                    Image(tabData.selectedItem.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .matchedGeometryEffect(id: tabData.selectedItem.image, in: animation)
                }
                .frame(height: UIScreen.main.bounds.height / 3)
                .padding(.vertical, 25)
            }
            .padding(.bottom)
            .background(Color(tabData.selectedItem.image).clipShape(CustomCorner()))
            HStack(spacing: 15) {
                Button(action: {
                    if cart != 1{cart -= 1}
                }) {
                    Image(systemName: "minus")
                        .font(.system(size: 22, weight: .bold))
                        .foregroundColor(.white)
                }
                
                Text("\(cart)")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Button(action: {cart += 1}) {
                    Image(systemName: "plus")
                        .font(.system(size: 22, weight: .bold))
                        .foregroundColor(.white)
                }
                
            }
            .padding(.vertical)
            .padding(.horizontal, 25)
            .background(Color(tabData.selectedItem.image))
            .cornerRadius(15)
            // white border
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.white,lineWidth: 1.5)
            )
            .offset(y: -35)
            .padding(.bottom, -35)
            Spacer()
        }
        .background(
            ZStack {
                Color(tabData.selectedItem.image)
                    .ignoresSafeArea(.all, edges: .top)
                Color.white
                    .ignoresSafeArea(.all, edges: .bottom)
            }
        )
        .onAppear{
            withAnimation(Animation.easeIn.delay(0.5)){
                start.toggle()
            }
        }
    }
}
