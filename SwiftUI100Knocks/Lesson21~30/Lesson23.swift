//
//  Lesson23.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/07/25.
//

import SwiftUI

struct Lesson23: View {
    var body: some View {
        VStack {
            CardView {
                Text("Swift")
            }

            CardView {
                Image(systemName: "swift")
                    .resizable()
                    .frame(width: 50, height: 50)
            }

            CardView(color: Color.red.opacity(0.4)) {
                Text("RedShadow")
            }

            CardView(color: Color.green.opacity(0.4), radius: 24) {
                Text("GreenBigShadow")
            }
        }
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
        Lesson23()
    }
}
