//
//  ImageGalleryView.swift
//  ImageRecongnitionApp
//
//  Created by Denis Makarau on 21.10.25.
//

import SwiftUI
import PhotosUI

struct ImageGalleryView: View {
    @State private var selectedPhoto: PhotosPickerItem?
    @State private var selectedImage: UIImage?
    @State private var isShowingCustomImageView = false
    
    private let imageResources: [[ImageResource]] = [
        [.sign1, .sign2, .sign3],
        [.sign4, .sign5, .sign6],
        [.sign7, .sign8, .sign9]
    ]
    
    var body: some View {
        VStack {
            // Photo picker button
            PhotosPicker(selection: $selectedPhoto, matching: .images) {
                VStack {
                    Image(systemName: "photo.badge.plus")
                        .font(.system(size: 40))
                        .foregroundColor(.blue)
                    Text("Select Custom Image")
                        .font(.caption)
                        .multilineTextAlignment(.center)
                }
                .frame(width: 100, height: 100)
                .background(Color(.systemGray6))
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.blue, lineWidth: 2)
                        .opacity(0.7)
                )
                .padding()
            }
            .onChange(of: selectedPhoto) { _, newPhoto in
                Task {
                    if let newPhoto = newPhoto,
                       let data = try? await newPhoto.loadTransferable(type: Data.self),
                       let image = UIImage(data: data) {
                        selectedImage = image
                        isShowingCustomImageView = true
                    }
                }
            }
            
            // Existing grid of predefined images
            Grid {
                ForEach(imageResources, id: \.self) { resourceRow in
                    GridRow {
                        ForEach(resourceRow, id: \.self) { resource in
                            NavigationLink {
                                TextRecognitionView(imageResource: resource)
                            } label: {
                                Image(resource)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 100, height: 100)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
        .trailTheme()
        .navigationDestination(isPresented: $isShowingCustomImageView) {
            if let selectedImage = selectedImage {
                TextRecognitionView(customImage: selectedImage)
            }
        }
    }
}

#Preview {
    ImageGalleryView()
}
