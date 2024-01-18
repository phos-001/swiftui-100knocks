//
//  Lesson71.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2024/01/18.
//

import SwiftUI

struct Lesson71: View {
    @State private var showingActivityIndicator: Bool = false

    var body: some View {
        Button("Share example.com") {
            showingActivityIndicator = true
        }
        .sheet(isPresented: $showingActivityIndicator, content: {
            ActivityViewController(activityItems: [URL(string: "https://example.com/")!])
        })
    }
}

struct ActivityViewController: UIViewControllerRepresentable {
    var activityItems: [Any]
    var applicationActivities: [UIActivity]? = nil

    func makeUIViewController(context: UIViewControllerRepresentableContext<ActivityViewController>) -> UIActivityViewController {
        let controller = UIActivityViewController(activityItems: activityItems, applicationActivities: applicationActivities)
        return controller
    }

    func updateUIViewController(_ uiViewController: UIActivityViewController, context: UIViewControllerRepresentableContext<ActivityViewController>) {}
}

#Preview {
    Lesson71()
}
