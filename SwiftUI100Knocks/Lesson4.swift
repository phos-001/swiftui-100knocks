//
//  Lesson4.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/05/10.
//

import SwiftUI

struct Lesson4: View {
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
        .overlay(
            RoundedRectangle(cornerRadius:75)
                .stroke(Color.black, lineWidth: 5)
        )
    }
}

struct Lesson4_Previews: PreviewProvider {
    static var previews: some View {
        Lesson4()
    }
}
