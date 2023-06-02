//
//  Lesson9.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/05/26.
//

import SwiftUI

struct Lesson9: View {
    @State var text = "Hello"
    @State var isEnglishFlag = true
    var body: some View {
        VStack {
            Text(text)
                .padding()
            Button(action: {
                if(isEnglishFlag) {
                    text = "こんにちは"
                    isEnglishFlag = false
                } else {
                    text = "Hello"
                    isEnglishFlag = true
                }
            }) {
                if(isEnglishFlag) {
                    Text("日本語に変更")
                } else {
                    Text("英語に変更")
                }
            }
        }
    }
}

struct Lesson9_Previews: PreviewProvider {
    static var previews: some View {
        Lesson9()
    }
}
