//
//  Lesson87.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2024/03/11.
//

import SwiftUI


struct Lesson87: View {
    @State var pokemons: [Pokemon] = []

    var body: some View {
        VStack {
            ForEach(pokemons, id: \.self.name) { pokemon in
                Text(pokemon.name)
            }
            Button {
                fetchPokemons()
            } label: {
                Text("Fetch Pokemons")
            }
        }
    }
}

extension Lesson87 {
    struct Pokemon: Decodable {
        let name: String
    }
}

extension Lesson87 {
    private func fetchPokemons() {
        let url: URL = URL(string: "https://swiswiswift.com/2022-06-15/pokemons.json")!
        let task: URLSessionTask = URLSession.shared.dataTask(with: url, completionHandler: {(data, response, _) in
            guard let data else { return }
            do {
                let pokemons = try JSONDecoder().decode([Pokemon].self, from: data)
                DispatchQueue.main.async {
                    self.pokemons = pokemons
                }
            } catch {
                print(error)
            }
        })
        task.resume()
    }
}

#Preview {
    Lesson87()
}
