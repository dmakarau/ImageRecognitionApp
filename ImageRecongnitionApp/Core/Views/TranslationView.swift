//
//  TranslationView.swift
//  ImageRecongnitionApp
//
//  Created by Denis Makarau on 21.10.25.
//

import SwiftUI
import Translation

struct TranslationView: View {
    @State private var showingTranslateion = false
    let text: String
    let isProcessing: Bool
    
    var body: some View {
        VStack {
            Text("Identified Text")
                .font(.subheadline.bold())
                .textCase(.uppercase)
                .foregroundStyle(.gray)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Text(text)
                .frame(maxWidth: .infinity, maxHeight: 50, alignment: .topLeading)
                .padding()
                .background(Color(.systemGroupedBackground))
                .overlay {
                    if isProcessing {
                        ProgressView()
                    }
                }.translationPresentation(isPresented: $showingTranslateion, text: text)
            
            Button {
               showingTranslateion = true
            } label: {
                Text("Translate")
                    .frame(height: 50)
                    .frame(maxWidth: .infinity)
                    .font(.headline)
                    .foregroundStyle(.white)
                    .background(RoundedRectangle(cornerRadius: 10))
            }
            .disabled(isProcessing)
            .padding(.vertical)
        }
    }
}

#Preview {
    Group {
        TranslationView(text: "", isProcessing: true)
        TranslationView(text: "Testing", isProcessing: false)


    }
}
