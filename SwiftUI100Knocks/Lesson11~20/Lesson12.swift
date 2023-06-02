//
//  Lesson12.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/06/02.
//

import SwiftUI

struct Lesson12: View {
    enum Fruits: String, CaseIterable {
        case apple = "Apple"
        case banana = "Banana"
        case orange = "Orange"
    }

    var body: some View {
        NavigationView {
            List(Fruits.allCases, id: \.self) { fruit in
                NavigationLink(destination: Lesson12SecondView(fruit: fruit.rawValue)) {
                    Text(fruit.rawValue)
                }
            }
        }
    }
}

struct Lesson12SecondView: View {
    let fruit: String
    var body: some View {
        Text(fruit)
            .navigationBarBackButtonHidden(true)
    }
}

struct Lesson12_Previews: PreviewProvider {
    static var previews: some View {
        Lesson12()
    }
}
