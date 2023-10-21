//
//  Theme.swift
//  LanguageTriviaGame
//
//  Created by Sergio Wehbe on 20/10/2023.
//

import SwiftUI

class Theme {
    static let cornerRadius: CGFloat = 10
    static let cardsShadowRadius: CGFloat = 5
    
    static let mainBackground = Color(uiColor: .systemCyan) // Color(red: 0.2, green: 0.2, blue: 0.2)
    
    static var randomOffset: CGFloat {
        CGFloat.randomSign * CGFloat.random(min: 2, max: 4)
    }
    
    static var randomRotationDegree: CGFloat {
        CGFloat.randomSign * CGFloat.random(min: 2, max: 4)
    }
}
