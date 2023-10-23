//
//  Lesson60.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/10/23.
//

import QGrid
import SwiftUI

struct Lesson60: View {
    @State var shape: [Shape] = [
        Shape(name: "Circle", imageName: "circle"),
        Shape(name: "Square", imageName: "square"),
        Shape(name: "Rectangle", imageName: "rectangle"),
        Shape(name: "Capsule", imageName: "capsule"),
        Shape(name: "Oval", imageName: "oval")
    ]
    var body: some View {
        QGrid(shape, columns: 2) { GridCell(shape: $0) }
            .ignoresSafeArea()
    }
}

struct GridCell: View {
    var shape: Shape
    var body: some View {
        VStack() {
            Image(systemName: shape.imageName)
                .resizable()
                .scaledToFit()
                .padding([.horizontal, .top], 6)
            Text(shape.name).lineLimit(1)
        }
    }
}

#Preview {
    Lesson60()
}
