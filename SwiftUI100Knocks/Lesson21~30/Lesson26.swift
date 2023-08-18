//
//  Lesson26.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/08/18.
//

import SwiftUI

struct Monster: Identifiable {
    let id = UUID()
    let name: String
}

struct Lesson26: View {
    @State private var pokemons: [Monster] = [
        Monster(name: "ピカチュー"),
        Monster(name: "ヒトカゲ"),
        Monster(name: "ゼニガメ"),
        Monster(name: "フシギダネ")]
    @State private var showingAlert = false

    var body: some View {
        List(pokemons) { pokemon in
            Button(action: {
                self.showingAlert = true
            }, label: {
                Text(pokemon.name)
            }).alert(isPresented: self.$showingAlert) {
                Alert(title: Text("アラート"),
                      message: Text("メッセージ"),
                      dismissButton: .default(Text("閉じる")))
            }
        }
    }
}
struct Lesson26_Previews: PreviewProvider {
    static var previews: some View {
        Lesson26()
    }
}
