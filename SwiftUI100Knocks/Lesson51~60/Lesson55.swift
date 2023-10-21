//
//  Lesson55.swift
//  SwiftUI100Knocks
//
//  Created by 林悠斗 on 2023/10/21.
//

import SwiftUI

struct Lesson55: View {
    @State var sheetItem: SheetItem?
    var body: some View {
        VStack(spacing: 16) {
            Button(action: {
                sheetItem = .circle
            }) {
                Text("Show Circle")
            }
            Button(action: {
                sheetItem = .square
            }) {
                Text("Show Square")
            }
        }
        .sheet(item: $sheetItem) { item in
            switch item {
            case .circle:
                CircleView()
            case .square:
                SquareView()
            }
        }
    }
}

enum SheetItem: Identifiable {
    case circle
    case square
    var id: Int {
        hashValue
    }
}

struct CircleView: View {
    var body: some View {
        Image(systemName: "circle")
            .resizable()
            .frame(width: 200, height: 200)
            .foregroundColor(.black)
            .scaledToFit()
    }
}

struct SquareView: View {
    var body: some View {
        Image(systemName: "square")
            .resizable()
            .frame(width: 200, height: 200)
            .foregroundColor(.black)
            .scaledToFit()
    }
}

#Preview {
    Lesson55()
}
