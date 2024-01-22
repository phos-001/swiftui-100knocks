//
//  Lesson76.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2024/01/22.
//


import SwiftUI

private struct Pokemon {
    let name: String
    let type: String
}

struct Lesson76: View {
    private let pokemons = [
        Pokemon(name: "Bulbasaur", type: "grass"),
        Pokemon(name: "Charmander", type: "flame")
    ]
    var body: some View {
        List(pokemons, id: \.name) { pokemon in
            Text(pokemon.name)
        }
    }
}

#Preview {
    Lesson76()
}
