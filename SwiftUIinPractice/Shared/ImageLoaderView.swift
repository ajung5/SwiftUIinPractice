//
//  ImageLoaderView.swift
//  SwiftUIinPractice
//
//  Created by Agung Nawawi on 02/05/24.
//

import SwiftUI
import SDWebImageSwiftUI

struct ImageLoaderView: View {
    
    var urlString: String = Constants.randomImage
    var resizingMode: ContentMode = .fill
    
    var body: some View {
        
        Rectangle()
            .opacity(001)
            .overlay {
                WebImage(url:  URL(string: urlString))
                    .resizable()
                    .indicator(.activity)
                    .aspectRatio(contentMode: resizingMode)
                    .allowsHitTesting(false) // menghilangkan clickable pada image diluar rectangle
            }
            .clipped()
    }
}

#Preview {
    ImageLoaderView()
        .cornerRadius(30)
        .padding(40)
        .padding(.vertical, 50)
}
