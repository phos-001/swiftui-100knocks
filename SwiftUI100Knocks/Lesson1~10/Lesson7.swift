//
//  Lesson7.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/05/19.
//

import SwiftUI

struct Pokemon: Identifiable {
    var id = UUID()
    var name: String
    var tag: Int
}

struct Lesson7: View {
    var pokemons = [
        Pokemon(name: "ヒトカゲ", tag: 0),
        Pokemon(name:"ゼニガメ", tag: 1),
        Pokemon(name:"フシギダネ", tag: 2)
    ]
    @State private var selectedValue = 0
    var body: some View {
        Picker("ポケモン", selection: $selectedValue){
            ForEach(pokemons) { pokemons in
                Text(pokemons.name).tag(pokemons.tag)
            }
        }
        .pickerStyle(WheelPickerStyle())
    }
}

struct Lesson7_Previews: PreviewProvider {
    static var previews: some View {
        Lesson7()
    }
}
