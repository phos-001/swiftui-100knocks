//
//  Lesson61.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/10/25.
//

import SwiftUI

struct Lesson61: View {
    @State var shape: [Shape] = [
        Shape(name: "Circle", imageName: "circle"),
        Shape(name: "Square", imageName: "square"),
        Shape(name: "Rectangle", imageName: "rectangle"),
        Shape(name: "Capsule", imageName: "capsule"),
        Shape(name: "Oval", imageName: "oval")
    ]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 16) {
                ForEach(shape) { shape in
                    Image(systemName: shape.imageName)
                        .resizable()
                        .frame(width: 80, height: 80)
                        .foregroundColor(.black)
                }
            }
            .padding(.horizontal, 16)
        }
    }
}

#Preview {
    Lesson61()
}
