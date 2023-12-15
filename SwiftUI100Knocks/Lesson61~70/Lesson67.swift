//
//  Lesson67.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/12/12.
//

import SwiftUI

struct Lesson67: View {
    let pokemons: [String] = ["Bulbasaur", "Charmander", "Squirtle"]
    var body: some View {
        List(pokemons, id: \.self) {  pokemon in
            HStack {
                Text(pokemon)
                Spacer()
            }
            .contentShape(Rectangle())
            .onTapGesture {
                print(pokemon)
            }
        }
    }
}

#Preview {
    Lesson67()
}
