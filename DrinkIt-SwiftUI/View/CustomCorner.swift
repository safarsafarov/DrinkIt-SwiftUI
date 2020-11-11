//
//  CustomCorner.swift
//  DrinkIt-SwiftUI
//
//  Created by Safar Safarov on 2020/11/12.
//

import SwiftUI

struct CustomCorner: Shape {
    
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.bottomLeft, .bottomRight], cornerRadii: CGSize(width: 35, height: 35))
        
        return Path(path.cgPath)
    }
}

