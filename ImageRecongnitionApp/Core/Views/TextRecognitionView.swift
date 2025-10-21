//
//  TextRecognitionView.swift
//  ImageRecongnitionApp
//
//  Created by Denis Makarau on 21.10.25.
//

import SwiftUI

struct TextRecognitionView: View {
    @State private var textRecognizer: TextRecognizer?
    
    let imageResource: ImageResource
    var body: some View {
        VStack {
            Image(imageResource)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .task {
                    textRecognizer = await TextRecognizer(imageResource: imageResource)
                }
            Spacer()
            
            TranslationView(text: textRecognizer?.recognizedText ?? "", isProcessing: isProcessing)
        }
        .padding()
        .navigationTitle("Image Info")
        .trailTheme()
    }
}

private extension TextRecognitionView {
    var isProcessing: Bool {
        textRecognizer == nil
    }
}

#Preview {
    TextRecognitionView(imageResource: .sign1)
}
