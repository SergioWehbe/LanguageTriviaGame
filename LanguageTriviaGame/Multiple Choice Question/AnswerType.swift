//
//  AnswerType.swift
//  LanguageTriviaGame
//
//  Created by Sergio Wehbe on 21/10/2023.
//

import SwiftUI

enum AnswerType: String {
    case correct = "Correct!"
    case wrong = "Incorrect"
    case partial = "Partially correct"
    
    var color: Color {
        switch self {
        case .correct:
                .green
        case .wrong:
                .red
        case .partial:
                .yellow
        }
    }
}
