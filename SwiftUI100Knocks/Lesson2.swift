//
//  Lesson2.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/04/21.
//

import SwiftUI

struct Lesson2: View {
    let imageURL = URL(string: "https://onl.sc/CRmKggj")
    
    var body: some View {
        AsyncImage(url: imageURL) { image in
            image.resizable()
        } placeholder: {
            ProgressView()
        }
        .scaledToFill()
        .frame(width: 150, height: 200)
        .clipped()
        .background(Color.red)
    }
}

struct Lesson2_Previews: PreviewProvider {
    static var previews: some View {
        Lesson2()
    }
}
