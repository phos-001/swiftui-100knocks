//
//  Lesson74.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2024/01/18.
//

import SwiftUI

struct Lesson74: View {
    @State private var isActive: Bool = false
    @State private var pokemonName: String = ""

    var body: some View {
        NavigationStack {
            List {
                Button(action: {
                    pokemonName = "Bulbasaur"
                    self.isActive = true
                }) {
                    Text("Bulbasaur")
                }
                Button {
                    pokemonName = "Charmander"
                    isActive = true
                } label: {
                    Text("Charmander")
                }
                Button {
                    pokemonName = "Squirtle"
                    isActive = true
                } label: {
                    Text("Squirtle")
                }
                .navigationDestination(isPresented: $isActive) {
                    Text(pokemonName)
                }
            }
        }
    }
}


struct NextView: View {
    var pokemonName: String
    var body: some View {
        Text(pokemonName)
    }
}

#Preview {
    Lesson74()
}
