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
                .font(.title)
                .multilineTextAlignment(.center)
                .modifier(CardModifier())
                .background(CardTiltedView())
                .background(CardTiltedView())
            
            Spacer()
            
            ForEach(model.answerArray.shuffled(), id: \.self) { answer in
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
