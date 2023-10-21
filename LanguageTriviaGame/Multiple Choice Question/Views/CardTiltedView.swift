//
//  CardTiltedView.swift
//  LanguageTriviaGame
//
//  Created by Sergio Wehbe on 21/10/2023.
//

import SwiftUI

struct CardTiltedView: View {
    
    var body: some View {
        
        RoundedRectangle(cornerRadius: Theme.cornerRadius)
            .modifier(CardModifier())
            .rotationEffect(.init(degrees: Theme.randomRotationDegree))
            .offset(x: Theme.randomOffset, y: Theme.randomOffset)
    }
}

#Preview {
    CardTiltedView()
}
