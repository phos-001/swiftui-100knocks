//
//  Lesson3.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/04/21.
//

import SwiftUI

struct Lesson3: View {
    let imageURL = URL(string: "https://cdn2.thecatapi.com/images/lisDai2Pf.jpg")

    var body: some View {
        AsyncImage(url: imageURL) { image in
            image.resizable()
        } placeholder: {
            ProgressView()
        }
        .scaledToFill()
        .frame(width: 150, height: 150)
        .cornerRadius(75)
    }
}

struct Lesson3_Previews: PreviewProvider {
    static var previews: some View {
        Lesson3()
    }
}
