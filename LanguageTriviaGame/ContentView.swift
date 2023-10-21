//
//  ContentView.swift
//  LanguageTriviaGame
//
//  Created by Sergio Wehbe on 20/10/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MultipleChoiceQuestionView(model: MultipleChoiceQuestionModel.exampleArray[0])
    }
}

#Preview {
    ContentView()
}
