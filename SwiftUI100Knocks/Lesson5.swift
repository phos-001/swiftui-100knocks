//
//  Lesson5.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/05/10.
//

import SwiftUI

struct Lesson5: View {
    
    let imageURL = URL(string: "https://cdn2.thecatapi.com/images/lisDai2Pf.jpg")
    
    var body: some View {
        AsyncImage(url: imageURL) { image in
            HStack(spacing: 30){
                image.resizable()
                image.resizable()
                image.resizable()
            }
            .frame(maxWidth: .infinity)
        } placeholder: {
            ProgressView()
        }
        .frame(width: 360, height: 100)
        
    }
}

struct Lesson5_Previews: PreviewProvider {
    static var previews: some View {
        Lesson5()
    }
}
