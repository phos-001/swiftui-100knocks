//
//  Lesson56_1.swift
//  SwiftUI100Knocks
//
//  Created by 林悠斗 on 2023/10/21.
//

import SwiftUI

struct Lesson56_1: View {
    @State var text: String = "こんにちは！"
    var body: some View {
        VStack(spacing: 16) {
            Text(text)
            Button(action: {
                text = "Hello!"
            }) {
                Text("change text to Hello!")
            }
            Button(action: {
                text = "你好!"
            }) {
                Text("change text to 你好!")
            }
        }
    }
}

#Preview {
    Lesson56_1()
}
