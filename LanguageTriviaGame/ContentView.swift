//
//  ContentView.swift
//  LanguageTriviaGame
//
//  Created by Sergio Wehbe on 20/10/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var currentQuestion: Int = 0
    @State var isShowingAlert: Bool = false
    @State var alertMessage: String = ""
    
    var body: some View {
        MultipleChoiceQuestionView(model: MultipleChoiceQuestionModel.exampleArray[currentQuestion]) { answerType in
            switch answerType {
            case .correct:
                alertMessage = "Correct!"
            case .wrong:
                alertMessage = "Not Correct"
            case .partial:
                alertMessage = "That was partially correct"
            }
            isShowingAlert = true
            
            if (currentQuestion + 1) == MultipleChoiceQuestionModel.exampleArray.count {
                currentQuestion = 0
            } else {
                currentQuestion += 1
            }
        }
        .alert(alertMessage, isPresented: $isShowingAlert) {
            Button("OK", role: .cancel) { }
        }
    }
}

#Preview {
    ContentView()
}
