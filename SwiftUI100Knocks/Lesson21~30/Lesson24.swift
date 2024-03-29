//
//  Lesson24.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/07/28.
//

import SwiftUI

struct Lesson24: View {
    var body: some View {
        VStack {
            Text("Swift")
                .card()

            Image(systemName: "swift")
                .card()

            Text("RedShadow")
                .card(color: Color.red.opacity(0.4))

            Text("GreenBigShadow")
                .card(color: Color.green.opacity(0.4), radius: 24)
        }
    }
}

struct CardViewModifier: ViewModifier {
    let color: Color
    let radius: CGFloat

    func body(content: Content) -> some View {
        content
            .padding(16)
            .background(Color.white)
            .cornerRadius(16)
            .shadow(color: color, radius: radius, x: 4, y: 4)
            .padding(radius + 8)
    }
}

extension View {
    func card(color: Color = Color.gray.opacity(0.4), radius: CGFloat = 8) -> some View {
        self.modifier(CardViewModifier(color: color, radius: radius))
    }
}
struct Lesson24_Previews: PreviewProvider {
    static var previews: some View {
        Lesson24()
    }
}
