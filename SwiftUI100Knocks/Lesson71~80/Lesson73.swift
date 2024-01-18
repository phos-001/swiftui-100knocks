//
//  Lesson73.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2024/01/18.
//

import SwiftUI

struct Lesson73: View {
    @State private var showingActivityIndicator: Bool = true

    var body: some View {
        ZStack {
            VStack {
                Spacer()
                Button {
                    showingActivityIndicator.toggle()
                } label: {
                    Text("Show or Hide Indicator")
                        .foregroundColor(.white)
                        .padding()
                        .background(.gray)
                }
            }
            if showingActivityIndicator {
                CustomActivityIndicator()
            }
        }
    }
}

private struct ActivityIndicator: UIViewRepresentable {
    func makeUIView(context: UIViewRepresentableContext<ActivityIndicator>) -> UIActivityIndicatorView {
        return UIActivityIndicatorView(style: .large)
    }
    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<ActivityIndicator>) {
        uiView.color = .white
        uiView.style = .large
        uiView.startAnimating()
    }
}

private struct CustomActivityIndicator: View {
    var body: some View {
        ActivityIndicator()
            .padding(12)
            .background(.gray.opacity(0.8))
            .cornerRadius(12)
    }
}

#Preview {
    Lesson73()
}
