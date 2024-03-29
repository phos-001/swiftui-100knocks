//
//  Lesson11.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/06/02.
//

import SwiftUI

struct Lesson11: View {
    enum Fruits: String, CaseIterable {
        case apple = "Apple"
        case banana = "Banana"
        case orange = "Orange"
    }
    
    var body: some View {
        NavigationView {
            List(Fruits.allCases, id: \.self) { fruit in
                NavigationLink(destination: Lesson11SecondView(fruit: fruit.rawValue)) {
                    Text(fruit.rawValue)
                }
            }
        }
    }
}

struct Lesson11SecondView: View {
    let fruit: String
    var body: some View {
        Text(fruit)
    }
}

struct Lesson11_Previews: PreviewProvider {
    static var previews: some View {
        Lesson11()
    }
}
