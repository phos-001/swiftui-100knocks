//
//  Lesson41.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/10/13.
//

import SwiftUI

struct Lesson41: View {
    var body: some View {
        Text(getAttributedString())
    }

    private func getAttributedString() -> AttributedString {
        var attributedString = AttributedString("リンクはこちら")
        let range = attributedString.range(of: "こちら")!
        attributedString[range].link = URL(string: "https://example.com")!
        attributedString[range].foregroundColor = .blue
        return attributedString
    }
}

struct Lesson41_Previews: PreviewProvider {
    static var previews: some View {
        Lesson41()
    }
}
