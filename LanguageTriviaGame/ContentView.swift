//
//  ContentView.swift
//  LanguageTriviaGame
//
//  Created by Sergio Wehbe on 20/10/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var currentModel: MultipleChoiceQuestionModel = MultipleChoiceQuestionModel.exampleArray[0]
    @State var currentQuestion: Int = 0
    @State var showQuestion: Bool = false
    @State var answerType: AnswerType? = nil
    
    var body: some View {
        MultipleChoiceQuestionView(model: $currentModel, showQuestion: $showQuestion, didAnswer: didAnswer)
            .animation(.default, value: showQuestion)
            .overlay {
                if let answerType {
                    VStack {
                        Spacer()
                        Spacer()
                        Text(answerType.rawValue)
                            .font(.system(size: 50))
                            .foregroundStyle(answerType.color)
                        Spacer()
                        Spacer()
                        Spacer()
                    }
                }
            }
            .onAppear {
                showQuestion = true
            }
    }
    
    private func didAnswer(answerType: AnswerType) {
        self.answerType = answerType
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            resetStates()
            nextQuestion()
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                currentModel = MultipleChoiceQuestionModel.exampleArray[currentQuestion]
                showQuestion = true
            }
        }
    }
    
    private func nextQuestion() {
        if (currentQuestion + 1) == MultipleChoiceQuestionModel.exampleArray.count {
            currentQuestion = 0
        } else {
            currentQuestion += 1
        }
    }
    
    private func resetStates() {
        answerType = nil
        showQuestion = false
    }
}

#Preview {
    ContentView()
}
