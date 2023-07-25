//
//  Lesson23.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/07/25.
//

import SwiftUI

struct Lesson23: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct CardView<Content>: View where Content: View {
    let color: Color
    let radius: CGFloat
    let content: () -> Content

    init(color: Color = Color.gray.opacity(0.4),
         radius: CGFloat = 8,
         @ViewBuilder content: @escaping () -> Content) {
        self.color = color
        self.radius = radius
        self.content = content
    }

    var body: some View {
        content()
            .padding(16)
            .background(Color.white)
            .cornerRadius(16)
            .shadow(color: color, radius: radius, x: 4, y: 4)
            .padding(radius + 8)
    }
}
struct Lesson23_Previews: PreviewProvider {
    static var previews: some View {
        CardView {
            Text("Snorlax")
        }
        .previewLayout(.sizeThatFits)
    }
}
