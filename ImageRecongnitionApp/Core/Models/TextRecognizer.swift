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
        var request = RecognizeTextRequest()
        request.recognitionLevel = .accurate
        let image = UIImage(resource: imageResource)
        
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
