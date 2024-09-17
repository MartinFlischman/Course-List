//
//  DefaultImageView.swift
//  Course List
//
//  Created by Martin on 2024/09/17.
//

import SwiftUI

struct DefaultImageView: View {
    var body: some View {
        VStack {
            ProgressView()
                .padding()
            Image(systemName: "books.vertical")
                .font(.largeTitle)
                .padding(.bottom, 6)
            Text("Grabbing the image...")
                .foregroundStyle(.secondary)
        }
        .padding(.vertical, 40)
        .frame(maxWidth: .infinity)
        .background {
            Color.gray
                .opacity(0.4)
        }
    }
}

#Preview {
    DefaultImageView()
}
