//
//  Detail.swift
//  DrinkIt-SwiftUI
//
//  Created by Safar Safarov on 2020/11/9.
//

import SwiftUI

class TabViewModel: ObservableObject{
    @Published var selectedItem : Item!
    @Published var isDetail = false
}
