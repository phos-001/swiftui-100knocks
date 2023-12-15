//
//  Lesson68.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/12/15.
//

import SwiftUI

struct Lesson68: View {
    let pokemons: [String] = ["Bulbasaur", "Charmander", "Squirtle"]
    var body: some View {
        List(pokemons, id: \.self) {  pokemon in
            HStack {
                Text(pokemon)
                Spacer()
                Button {
                    print("Tap Button1:\(pokemon)")
                } label: {
                    Text("Button1")
                        .padding()
                        .border(.red)
                        .tint(.red)
                }
                .buttonStyle(PlainButtonStyle())
                Button {
                    print("Tap Button2:\(pokemon)")
                } label: {
                    Text("Button2")
                        .padding()
                        .border(.blue)
                }
                .buttonStyle(PlainButtonStyle())
            }
            .contentShape(Rectangle())
            .onTapGesture {
                print("Tap Cell:\(pokemon)")
            }
        }
    }
}

#Preview {
    Lesson68()
}
