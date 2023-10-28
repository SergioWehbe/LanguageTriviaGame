//
//  GameStateManager.swift
//  LanguageTriviaGame
//
//  Created by Sergio Wehbe on 28/10/2023.
//

import Foundation
import SwiftUI

@Observable class GameStateManager {
    
    static let shared = GameStateManager()
    
    var currentModel: MultipleChoiceQuestionModel = MultipleChoiceQuestionModel.exampleArray[0]
    var showQuestion: Bool = false
    var answerType: AnswerType? = nil
    
    private var currentQuestion: Int = 0
    
    func didAnswer(answerType: AnswerType) {
        self.answerType = answerType
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) { [weak self] in
            guard let self else { return }
            resetStates()
            prepareNextQuestion()
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [weak self] in
            guard let self else { return }
            goToNextQuestion()
        }
    }
    
    private func prepareNextQuestion() {
        if (currentQuestion + 1) == MultipleChoiceQuestionModel.exampleArray.count {
            currentQuestion = 0
        } else {
            currentQuestion += 1
        }
    }
    
    private func goToNextQuestion() {
        currentModel = MultipleChoiceQuestionModel.exampleArray[currentQuestion]
        showQuestion = true
    }
    
    private func resetStates() {
        answerType = nil
        showQuestion = false
    }
}
