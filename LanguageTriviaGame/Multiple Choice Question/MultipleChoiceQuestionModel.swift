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
    let hasAllOfTheAbove: Bool
    
    init(question: String, answerArray: [String], correctAnswer: String, hasAllOfTheAbove: Bool = false) {
        self.question = question
        self.answerArray = answerArray
        self.correctAnswer = correctAnswer
        self.hasAllOfTheAbove = hasAllOfTheAbove
    }
    
    init(question: String, answerArray: [String]) {
        self.question = question
        self.answerArray = answerArray
        self.correctAnswer = nil
        self.hasAllOfTheAbove = true
    }
    
    static let exampleArray: [MultipleChoiceQuestionModel] = [
        .init(question: "How do people call a stranger on the street in 🇱🇧Lebanon?",
              answerArray: ["My Eye",
                            "My Brother",
                            "My Lover"]
             ),
        .init(question: "The 🇩🇪German word \"Gift\" means:",
              answerArray: ["gift",
                            "song",
                            "secret"],
              correctAnswer: "poison"
             ),
        .init(question: "The 🇫🇷French word \"but\" means:",
              answerArray: ["butt",
                            "arm",
                            "however"],
              correctAnswer: "goal",
              hasAllOfTheAbove: true
             )
    ]
}

