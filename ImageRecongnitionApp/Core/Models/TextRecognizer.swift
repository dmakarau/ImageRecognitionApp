//
//  TextRecognizer.swift
//  ImageRecongnitionApp
//
//  Created by Denis Makarau on 21.10.25.
//

import Foundation
import SwiftUI
import Vision

struct TextRecognizer {
    var recognizedText = ""
    var observations: [RecognizedTextObservation] = []
    
    init(imageResource: ImageResource) async {
        let image = UIImage(resource: imageResource)
        await performRecognition(on: image)
    }
    
    init(uiImage: UIImage) async {
        await performRecognition(on: uiImage)
    }
    
    private mutating func performRecognition(on image: UIImage) async {
        var request = RecognizeTextRequest()
        request.recognitionLevel = .accurate
        
        if let imageData = image.pngData(),
           let results = try? await request.perform(on: imageData) {
            observations = results
        }
        
        for observation in observations {
            let candidate = observation.topCandidates(1)
            
            if let observedText = candidate.first?.string {
                recognizedText += "\(observedText) "
            }
        }
    }
}
