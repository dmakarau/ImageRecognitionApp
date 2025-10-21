//
//  TextRecognitionView.swift
//  ImageRecongnitionApp
//
//  Created by Denis Makarau on 21.10.25.
//

import SwiftUI

struct TextRecognitionView: View {
    let imageResource: ImageResource
    var body: some View {
        VStack {
            Image(imageResource)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 10))
            Spacer()
            
            TranslationView(text: "", isProcessing: false)
        }
        .padding()
        .navigationTitle("Image Info")
        .trailTheme()
    }
}

#Preview {
    TextRecognitionView(imageResource: .sign1)
}
