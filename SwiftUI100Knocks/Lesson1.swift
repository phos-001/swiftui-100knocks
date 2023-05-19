//
//  Lesson1.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/04/21.
//

import SwiftUI

struct Lesson1: View {
    let imageURL = URL(string: "https://onl.sc/KdhXV8q")
    
    var body: some View {
        AsyncImage(url: imageURL) { image in
            image.resizable()
        } placeholder: {
            ProgressView()
        }
        .aspectRatio(contentMode: .fit)
        .frame(width: 150, height: 200)
        .background(.red)
    }
}

struct Lesson1_Previews: PreviewProvider {
    static var previews: some View {
        Lesson1()
    }
}
