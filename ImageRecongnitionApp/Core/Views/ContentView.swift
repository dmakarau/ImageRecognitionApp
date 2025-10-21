//
//  ContentView.swift
//  ImageRecongnitionApp
//
//  Created by Denis Makarau on 21.10.25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 50) {
                Text("Tap to select an image to translate")
                    .font(.headline)
                    .padding()
                
                ImageGalleryView()
                
                Spacer()
            }
            .navigationTitle("Image Decoder")
            .trailTheme()
        }
    }
}

#Preview {
    ContentView()
}
