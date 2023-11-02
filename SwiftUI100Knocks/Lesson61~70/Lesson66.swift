//
//  Lesson66.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/11/02.
//

import SwiftUI

private struct Pokemon: Identifiable {
    var id: Int
    let name: String
}

struct Lesson66: View {
    @State private var pokemons: [Pokemon] = [
        Pokemon(id: 1, name: "Bulbasaur"),
        Pokemon(id: 4, name: "Charmander"),
        Pokemon(id: 7, name: "Squirtle")
    ]
    var body: some View {
        NavigationView {
            List {
                ForEach(pokemons) { pokemon in
                    Text(pokemon.name)
                }
                .onMove { (indexSet, index) in
                    self.pokemons.move(fromOffsets: indexSet, toOffset: index)
                }
            }
            .navigationBarTitle(Text("Pokemon List"))
            .navigationBarItems(trailing: EditButton())
        }
    }
}

#Preview {
    Lesson66()
}
