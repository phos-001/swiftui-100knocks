//
//  Lesson83.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2024/03/01.
//

import PDFKit
import SwiftUI

struct Lesson83: View {
    var body: some View {
        PhotoDetailView(image: UIImage(systemName: "swift")!)
    }
}

struct PhotoDetailView: UIViewRepresentable {
    let image: UIImage

    func makeUIView(context: Context) -> some UIView {
        let view = PDFView()
        view.document = PDFDocument()
        guard let page = PDFPage(image: image) else { return view }
        view.document?.insert(page, at: 0)
        view.autoScales = true
        return view
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {}
}

#Preview {
    Lesson83()
}

