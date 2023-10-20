//
//  Lesson48.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/10/20.
//

import SwiftUI

struct Lesson48: View {
    @AppStorage("FAVORITE_POKEMON_NAME") var favoritePokemonName: String = ""
    var body: some View {
        VStack(spacing: 16) {
            Text("Your favorite pokemon is \(favoritePokemonName).")
            Button("Pikachu is my favorite pokemon.") {
                favoritePokemonName = "Pikachu"
            }
            Button("Gabrielus is my favorite pokemon.") {
                UserDefaults.standard.set("Gabrielus", forKey: "FAVORITE_POKEMON_NAME")
            }

        }
    }
}

struct Lesson48_Previews: PreviewProvider {
    static var previews: some View {
        Lesson48()
    }
}
