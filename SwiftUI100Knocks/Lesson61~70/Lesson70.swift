//
//  Lesson70.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/12/15.
//

import SwiftUI

struct Lesson70: View {
    @State var text: String = ""
    let pokemons: [String] = ["Bulbasaur", "Charmander", "Squirtle"]
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
                    .modifier(TextFieldClearButton(text: $text))
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

struct TextFieldClearButton: ViewModifier {
    @Binding var text: String
    func body(content: Content) -> some View {
        HStack{
            content
            if !text.isEmpty {
                Button(action: { self.text = "" }) {
                    Image(systemName: "delete.left")
                        .foregroundColor(Color(UIColor.opaqueSeparator))
                }
                .padding(.trailing, 8)
            }
        }
    }
}

#Preview {
    Lesson70()
}
