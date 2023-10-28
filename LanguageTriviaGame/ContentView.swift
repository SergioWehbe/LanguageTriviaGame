//
//  ContentView.swift
//  LanguageTriviaGame
//
//  Created by Sergio Wehbe on 20/10/2023.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            MultipleChoiceQuestionView()
                .animation(.default, value: GameStateManager.shared.showQuestion)
                .onAppear {
                    GameStateManager.shared.showQuestion = true
                }
            
            if let answerType = GameStateManager.shared.answerType {
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
    }
}

#Preview {
    ContentView()
}
