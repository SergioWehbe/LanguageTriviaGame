//
//  MultipleChoiceQuestionView.swift
//  LanguageTriviaGame
//
//  Created by Sergio Wehbe on 21/10/2023.
//

import SwiftUI

struct MultipleChoiceQuestionView: View {
    
    @Binding var model: MultipleChoiceQuestionModel
    @Binding var showQuestion: Bool
    let didAnswer: (AnswerType) -> Void
    
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 60)
            
            Text(model.question)
                .font(.title)
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity)
                .frame(height: 150)
                .modifier(CardModifier())
                .background(CardTiltedView())
                .background(CardTiltedView())
                .offset(y: showQuestion ? 0 : -300)
            
            Spacer()
            
            if showQuestion {
                
                ForEach(model.answerArray.shuffled(), id: \.self) { answer in
                    AnswerButton(title: answer) {
                        if let correctAnswer = model.correctAnswer {
                            didAnswer(answer == correctAnswer ? .correct : .wrong)
                        } else {
                            didAnswer(.partial)
                        }
                    }
                }
                
                if model.correctAnswer == nil {
                    AnswerButton(title: "All of the above") {
                        didAnswer(model.correctAnswer == nil ? .correct : .wrong)
                    }
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
