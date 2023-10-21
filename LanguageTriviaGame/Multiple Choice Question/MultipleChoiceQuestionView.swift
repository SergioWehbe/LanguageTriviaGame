//
//  MultipleChoiceQuestionView.swift
//  LanguageTriviaGame
//
//  Created by Sergio Wehbe on 21/10/2023.
//

import SwiftUI

struct MultipleChoiceQuestionView: View {
    
    let model: MultipleChoiceQuestionModel
    
    var body: some View {
        VStack {
            Spacer()
            
            Text(model.question)
                .padding()
                .font(.title)
                .multilineTextAlignment(.center)
                .background(Color(uiColor: .systemBackground))
                .clipShape(RoundedRectangle(cornerRadius: Theme.cornerRadius))
                .shadow(radius: Theme.cardsShadowRadius)
                .background(RoundedRectangle(cornerRadius: Theme.cornerRadius)
                    .padding()
                    .background(Color(uiColor: .systemBackground))
                    .foregroundStyle(Color(uiColor: .label))
                    .clipShape(RoundedRectangle(cornerRadius: Theme.cornerRadius))
                    .rotationEffect(.init(degrees: Theme.randomRotationDegree))
                    .offset(x: Theme.randomOffset, y: Theme.randomOffset))
                .shadow(radius: Theme.cardsShadowRadius)
                .background(RoundedRectangle(cornerRadius: Theme.cornerRadius)
                    .padding()
                    .background(Color(uiColor: .systemBackground))
                    .foregroundStyle(Color(uiColor: .label))
                    .clipShape(RoundedRectangle(cornerRadius: Theme.cornerRadius))
                    .rotationEffect(.init(degrees: Theme.randomRotationDegree))
                    .offset(x: Theme.randomOffset, y: Theme.randomOffset))
            
            Spacer()
            
            ForEach(model.answerArray, id: \.self) { answer in
                AnswerButton(title: answer)
            }
            
            if model.correctAnswer == nil {
                AnswerButton(title: "All of the above")
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
