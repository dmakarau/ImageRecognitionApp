//
//  TextRecognitionView.swift
//  ImageRecongnitionApp
//
//  Created by Denis Makarau on 21.10.25.
//

import SwiftUI

struct TextRecognitionView: View {
    @State private var textRecognizer: TextRecognizer?
    
    let imageResource: ImageResource?
    let customImage: UIImage?
    
    init(imageResource: ImageResource) {
        self.imageResource = imageResource
        self.customImage = nil
    }
    
    init(customImage: UIImage) {
        self.imageResource = nil
        self.customImage = customImage
    }
    
    var body: some View {
        VStack {
            Group {
                if let imageResource = imageResource {
                    Image(imageResource)
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                } else if let customImage = customImage {
                    Image(uiImage: customImage)
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
            }
            .task {
                if let imageResource = imageResource {
                    textRecognizer = await TextRecognizer(imageResource: imageResource)
                } else if let customImage = customImage {
                    textRecognizer = await TextRecognizer(uiImage: customImage)
                }
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
