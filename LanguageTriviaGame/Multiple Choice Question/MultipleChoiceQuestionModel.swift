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
    
    lazy var answerArrayToShow: [String] = {
        if let correctAnswer {
            let wrongAnswersCount = GameStateManager.shared.currentModel.hasAllOfTheAbove ? 2 : 3
            return answerArray.shuffled().prefix(wrongAnswersCount) + [correctAnswer]
        } else {
            let wrongAnswersCount = GameStateManager.shared.currentModel.hasAllOfTheAbove ? 3 : 4
            return answerArray.shuffled().prefix(wrongAnswersCount) + []
        }
    }()
    
    var isAllOfTheAboveCorrectAnswer: Bool {
        correctAnswer == nil
    }
    
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

