//
//  MultipleChoiceQuestionView.swift
//  LanguageTriviaGame
//
//  Created by Sergio Wehbe on 21/10/2023.
//

import SwiftUI

struct MultipleChoiceQuestionView: View {
    
    let model: MultipleChoiceQuestionModel
    let didAnswer: (AnswerType) -> Void
    
    var body: some View {
        VStack {
            Spacer()
            
            Text(model.question)
                .font(.title)
                .multilineTextAlignment(.center)
                .modifier(CardModifier())
                .background(CardTiltedView())
                .background(CardTiltedView())
            
            Spacer()
            
            ForEach(model.answerArray.shuffled(), id: \.self) { answer in
                AnswerButton(title: answer) {
                    if let correctAnswer = model.correctAnswer {
                        didAnswer(answer == correctAnswer ? .correct : .wrong)
                    } else {
                        didAnswer(.partial)
                    }
                }
                    .transition(.move(edge: .bottom))
            }
            
            if model.correctAnswer == nil {
                AnswerButton(title: "All of the above") {
                    didAnswer(model.correctAnswer == nil ? .correct : .wrong)
                }
            }
            
            Spacer()
        }
        .padding()
        .background(Theme.mainBackground)
    }
}

#Preview {
    ContentView()
}
