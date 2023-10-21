//
//  CardModifier.swift
//  LanguageTriviaGame
//
//  Created by Sergio Wehbe on 21/10/2023.
//

import SwiftUI

struct CardModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(Color(uiColor: .systemBackground))
            .foregroundStyle(Color(uiColor: .label))
            .clipShape(RoundedRectangle(cornerRadius: Theme.cornerRadius))
    }
}
