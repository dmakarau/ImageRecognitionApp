//
//  ImageGalleryView.swift
//  ImageRecongnitionApp
//
//  Created by Denis Makarau on 21.10.25.
//

import SwiftUI

struct ImageGalleryView: View {
    private let imageResources: [[ImageResource]] = [
        [.sign1, .sign2, .sign3],
        [.sign4, .sign5, .sign6],
        [.sign7, .sign8, .sign9]
    ]
    var body: some View {
        Grid {
            ForEach(imageResources, id: \.self) { resourceRow in
                GridRow {
                    ForEach(resourceRow, id: \.self) { resource in
                        NavigationLink {
                            TranslationView()
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
}

#Preview {
    ImageGalleryView()
}
