//
//  Lesson56_2.swift
//  SwiftUI100Knocks
//
//  Created by 林悠斗 on 2023/10/21.
//

import SwiftUI

struct Lesson56_2: View {
    @State var text: String = "こんにちは！"
    var body: some View {
        NavigationView {
            VStack(spacing: 16) {
                Text(text)
                NavigationLink(destination: BindingView(text: $text)) {
                    Text("change text")
                }
            }
        }
    }
}

struct BindingView: View {
    @Binding var text: String
    var body: some View {
        VStack(spacing: 16) {
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
    Lesson56_2()
}
