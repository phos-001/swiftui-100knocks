//
//  Lesson89.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2024/03/11.
//

import SwiftUI

struct Lesson89: View {
    var body: some View {
        Text("Hello world!")
    }
}

struct Lesson89_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Lesson89()
                .previewDevice(PreviewDevice(rawValue: "iPhone 12 mini"))
                .previewDisplayName("iPhone 12 mini")
            Lesson89()
                .previewDevice(PreviewDevice(rawValue: "iPhone 13"))
                .previewDisplayName("iPhone 13")
            Lesson89()
                .previewDevice("iPhone 15 Pro")
                .previewDisplayName("iPhone 15 Pro")
        }
    }
}
