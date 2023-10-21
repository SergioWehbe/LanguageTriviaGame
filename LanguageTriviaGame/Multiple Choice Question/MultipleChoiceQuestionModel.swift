//
//  MultipleChoiceQuestionModel.swift
//  LanguageTriviaGame
//
//  Created by Sergio Wehbe on 21/10/2023.
//

import Foundation

struct MultipleChoiceQuestionModel {
    let question: String
    let answerArray: [String]
    let correctAnswer: String?
    
    init(question: String, answerArray: [String], correctAnswer: String? = nil) {
        self.question = question
        self.answerArray = answerArray
        self.correctAnswer = correctAnswer
    }
    
    static let exampleArray: [MultipleChoiceQuestionModel] = [
        .init(question: "How do people call a stranger on the street in 🇱🇧Lebanon?",
              answerArray: ["My Eye",
                            "My Brother",
                            "My Lover"]),
        .init(question: "The 🇩🇪German word \"Gift\" means:",
              answerArray: ["gift",
                            "song",
                            "secret",
                            "poison"],
              correctAnswer: "poison")
    ]
}

