//
//  AnswerButton.swift
//  LanguageTriviaGame
//
//  Created by Sergio Wehbe on 21/10/2023.
//

import SwiftUI

struct AnswerButton: View {
    
    let title: String
    
    var body: some View {
        
        Button {
            print("Answer tapped: \(title)")
        } label: {
            HStack {
                Spacer()
                Text(title)
                Spacer()
            }
        }
        .font(.title2)
        .modifier(CardModifier())
    }
}

#Preview {
    AnswerButton(title: "The Answer")
}
