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
            
        } label: {
            HStack {
                Spacer()
                Text(title)
                    .font(.title2)
                Spacer()
            }
        }
        .modifier(CardModifier())
    }
}

#Preview {
    AnswerButton(title: "The Answer")
}
