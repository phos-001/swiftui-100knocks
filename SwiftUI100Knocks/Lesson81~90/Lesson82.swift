//
//  Lesson82.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2024/03/01.
//

import SwiftUI

struct Lesson82: View {
    @State var scale: CGFloat = 1.0

    var body: some View {
        Image(systemName: "swift")
            .resizable()
            .scaleEffect(scale)
            .frame(width: 200, height: 200)
            .gesture(MagnificationGesture()
                .onChanged { value in
                scale = value.magnitude
            })
    }
}

#Preview {
    Lesson82()
}

