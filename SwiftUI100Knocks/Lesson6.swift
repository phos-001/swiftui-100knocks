//
//  Lesson6.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/05/12.
//

import SwiftUI

struct Lesson6: View {
    let imageURL = URL(string: "https://cdn2.thecatapi.com/images/lisDai2Pf.jpg")

    var body: some View {
        NavigationView {
            NavigationLink(destination: Lesson5()){
                Text("Lesson5")
            }
            .navigationTitle("Lesson6")
        }
    }
}

struct Lesson6_Previews: PreviewProvider {
    static var previews: some View {
        Lesson6()
    }
}
