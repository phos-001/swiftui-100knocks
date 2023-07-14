//
//  Lesson18.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/07/14.
//

import SwiftUI

struct Lesson18: View {
    @State var text: String = "Hello"
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
                ZStack {
                    Rectangle()
                        .stroke(lineWidth: 3)
                        .frame(width: 200, height: 100)
                        .foregroundColor(.gray)
                    HStack {
                        Image(systemName: "swift")
                            .foregroundColor(.red)
                        if(isEnglishFlag) {
                            Text("日本語に変更")
                                .foregroundColor(.black)
                        } else {
                            Text("英語に変更")
                                .foregroundColor(.black)
                        }
                    }
                }
            }.buttonStyle(PlainButtonStyle())
        }
    }
}

struct Lesson18_Previews: PreviewProvider {
    static var previews: some View {
        Lesson18()
    }
}
