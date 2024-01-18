//
//  Lesson72.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2024/01/18.
//

import SwiftUI

struct Lesson72: View {
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
                ActivityIndicator()
            }
        }
    }
}

private struct ActivityIndicator: UIViewRepresentable {
    func makeUIView(context: UIViewRepresentableContext<ActivityIndicator>) -> UIActivityIndicatorView {
        return UIActivityIndicatorView(style: .large)
    }
    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<ActivityIndicator>) {
        uiView.startAnimating()
    }
}

#Preview {
    Lesson72()
}
