//
//  TextArea.swift
//  InstagramClone
//
//  Created by Sergey Basin on 07.04.2021.
//

import SwiftUI

struct TextArea: View {
    @Binding var text: String
    let placeHolder: String
    
    init(text: Binding<String>, placeholder: String) {
        self._text = text
        self.placeHolder = placeholder
        UITextView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {
                Text(placeHolder)
                    .foregroundColor(Color(UIColor.placeholderText))
                    .padding(.horizontal, 8)
                    .padding(.vertical, 12)
            }
            
            TextEditor(text: $text)
                .padding(4)
        }
        .font(.body)
    }
}
