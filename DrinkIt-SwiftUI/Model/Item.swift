//
//  Item.swift
//  DrinkIt-SwiftUI
//
//  Created by Safar Safarov on 2020/11/8.
//

import SwiftUI

struct Item: Indetifiable{
    var id = UUID().uuidString
    var title: String
    var price: String
    var discount: String
    var image: String
}

