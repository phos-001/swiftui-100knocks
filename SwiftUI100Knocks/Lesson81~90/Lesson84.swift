//
//  Lesson84.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2024/03/11.
//

import SwiftUI

struct Lesson84: View {
    var body: some View {
        ImageViewer(imageName: "swift")
            .ignoresSafeArea(.all, edges: .all)
    }
}

struct ImageViewer: UIViewRepresentable {
    let imageName: String

    func makeUIView(context: Context) -> UIImageViewerView {
        let view = UIImageViewerView(imageName: imageName)
        return view
    }

    func updateUIView(_ uiView: UIImageViewerView, context: Context) {}
}

public class UIImageViewerView: UIView {
    private let imageName: String
    private let scrollView: UIScrollView = UIScrollView()
    private let imageView: UIImageView = UIImageView()

    required init(imageName: String) {
        self.imageName = imageName
        super.init(frame: .zero)

        scrollView.delegate = self
        scrollView.maximumZoomScale = 3.0
        scrollView.minimumZoomScale = 1.0
        addSubview(scrollView)

        imageView.image = UIImage(systemName: imageName)
        imageView.contentMode = .scaleAspectFit
        scrollView.addSubview(imageView)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


    public override func layoutSubviews() {
       super.layoutSubviews()
        scrollView.frame = bounds
        imageView.frame = scrollView.frame
    }
}

extension UIImageViewerView: UIScrollViewDelegate {
    public func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
}


#Preview {
    Lesson84()
}

