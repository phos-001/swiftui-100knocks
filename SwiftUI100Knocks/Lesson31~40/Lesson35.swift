//
//  Lesson35.swift
//  SwiftUI100Knocks
//
//  Created by 林悠斗 on 2023/08/26.
//

import SwiftUI

struct Shape: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
}

struct ShapeCell: View {
    let shape: Shape
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: shape.imageName)
                .resizable()
                .frame(width: 80, height: 80)
                .padding(5)
            Text(shape.name)
                .font(Font.system(size: 20.0).bold())
                .frame(maxWidth: .infinity, maxHeight: 32)
                .background(Color.gray)
                .foregroundColor(Color.white)
                .opacity(0.8)
        }
    }
}

struct Lesson35: View {
    let columns: Int = 3
    let shapes = [
        Shape(name: "Circle", imageName: "circle"),
        Shape(name: "Square", imageName: "square"),
        Shape(name: "Rectangle", imageName: "rectangle"),
        Shape(name: "Capsule", imageName: "capsule"),
        Shape(name: "Oval", imageName: "oval"),
        Shape(name: "Triangle", imageName: "triangle"),
        Shape(name: "Diamond", imageName: "diamond"),
        Shape(name: "Octagon", imageName: "octagon"),
        Shape(name: "Hexagon", imageName: "hexagon"),
        Shape(name: "Pentagon", imageName: "pentagon"),
        Shape(name: "Seal", imageName: "seal")]
    var body: some View {
        GeometryReader { geometry in
            ScrollView(showsIndicators: false) {
                ForEach(0..<self.shapes.count/self.columns, id: \.self) { rowIndex in
                    HStack(spacing: 0) {
                        ForEach(0..<self.columns, id: \.self) { columnIndex in
                            self.getShapeCell(
                                shape: self.getShape(rowIndex: rowIndex, columnIndex: columnIndex),
                                width: self.cellWidth(width: geometry.size.width),
                                height: self.cellHeight(width: geometry.size.width))
                        }
                    }
                }
                if (self.shapes.count % self.columns > 0) {
                    HStack(spacing: 0) {
                        ForEach(0..<shapes.count % self.columns, id: \.self) { lastCoumnIndex in
                            self.getShapeCell(
                                shape: self.getShape(lastColumnIndex: lastCoumnIndex),
                                width: self.cellWidth(width: geometry.size.width),
                                height: self.cellHeight(width: geometry.size.width))
                        }
                        Spacer()
                    }
                }
            }
        }.padding()
    }

    private func getShape(rowIndex: Int, columnIndex: Int) -> Shape {
        return shapes[columns * rowIndex + columnIndex]
    }

    private func getShape(lastColumnIndex: Int) -> Shape {
        return self.shapes[self.columns * (self.shapes.count / self.columns) + lastColumnIndex]
    }

    private func cellWidth(width: CGFloat) -> CGFloat {
        return width / CGFloat(columns)
    }

    private func cellHeight(width: CGFloat) -> CGFloat {
        return cellWidth(width: width) * 1.3
    }

    private func getShapeCell(shape: Shape, width: CGFloat, height: CGFloat) -> AnyView {
        return AnyView(ShapeCell(shape: shape)
            .frame(width: width,
                   height: height)
                .border(Color.black, width: 2)
                .clipped())
    }
}

struct Lesson35_Previews: PreviewProvider {
    static var previews: some View {
        Lesson35()
            .previewDevice("iPhone 14")
        Lesson35()
            .previewDevice("iPhone SE (3rd generation)")
    }
}
