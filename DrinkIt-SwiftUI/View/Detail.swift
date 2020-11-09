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
    var body: some View {
        VStack {
            
            VStack{
                ZStack {
                    HStack {
                        Button(action: {
                            withAnimation(.spring()){
                                tabData.isDetail.toggle()
                            }
                        }) {
                            Image(systemName: "arrow.left")
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
                .frame(height: UIScreen.main.bounds.height / 2.8)
                .padding(.vertical, 25)
            }
            .background(Color(tabData.selectedItem.image))
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
