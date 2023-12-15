//
//  Lesson69.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/12/15.
//

import SwiftUI

struct Lesson69: View {
    let pokemons: [String] = ["Bulbasaur", "Charmander", "Squirtle"]
    @State var text: String = ""
    var filteredPokemons: [String] {
        if text.isEmpty {
            return pokemons
        } else {
            return pokemons.filter { $0.uppercased().contains(text.uppercased()) }
        }
    }
    var body: some View {
        ScrollView {
            LazyVStack {
                TextField("Type your search", text: $text)
                    .padding(8)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                ForEach(filteredPokemons, id: \.self) { pokemon in
                    VStack(alignment: .leading) {
                        Text(pokemon)
                            .padding(.leading, 12)
                        Divider()
                    }
                }
            }
        }
    }
}

#Preview {
    Lesson68()
}
