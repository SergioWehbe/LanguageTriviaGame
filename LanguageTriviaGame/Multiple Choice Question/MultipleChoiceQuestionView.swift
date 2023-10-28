//
//  MultipleChoiceQuestionView.swift
//  LanguageTriviaGame
//
//  Created by Sergio Wehbe on 21/10/2023.
//

import SwiftUI

struct MultipleChoiceQuestionView: View {
    
    var body: some View {
        let _ = Self._printChanges()
        VStack {
            Spacer()
                .frame(height: 60)
            
            Text(GameStateManager.shared.currentModel.question)
                .font(.title)
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity)
                .frame(height: 150)
                .modifier(CardModifier())
                .background(CardTiltedView())
                .background(CardTiltedView())
                .offset(y: GameStateManager.shared.showQuestion ? 0 : -300)
            
            Spacer()
            
            if GameStateManager.shared.showQuestion {
                
                ForEach(Array(GameStateManager.shared.currentModel.answerArrayToShow), id: \.self) { answer in
                    AnswerButton(title: answer) {
                        if let correctAnswer = GameStateManager.shared.currentModel.correctAnswer {
                            GameStateManager.shared.didAnswer(answerType: answer == correctAnswer ? .correct : .wrong)
                        } else {
                            GameStateManager.shared.didAnswer(answerType: .partial)
                        }
                    }
                    .disabled(GameStateManager.shared.answerType != nil)
                }
                
                if GameStateManager.shared.currentModel.hasAllOfTheAbove {
                    AnswerButton(title: "All of the above") {
                        GameStateManager.shared.didAnswer(answerType: GameStateManager.shared.currentModel.isAllOfTheAboveCorrectAnswer ? .correct : .wrong)
                    }
                    .disabled(GameStateManager.shared.answerType != nil)
                }
                
            }
            
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Theme.mainBackground)
    }
}

#Preview {
    ContentView()
}
