//
//  Lesson22.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/07/25.
//

import SwiftUI

struct Lesson22: View {
    var body: some View {
        (Text("I ")
         + Text("❤️ ")
         + Text("Snorlax!")
            .foregroundColor(Color.black)
            .font(Font.system(size: 20).bold())
         + Text("\n")
         + Text("Snorlax ")
            .foregroundColor(Color.red)
         + Text("is most ")
            .foregroundColor(Color.blue)
         + Text("cute& cool & powerful ")
            .foregroundColor(Color.green)
         + Text("Pokemon.")
            .foregroundColor(Color.yellow)
        ).lineSpacing(4)
    }
}

struct Lesson22_Previews: PreviewProvider {
    static var previews: some View {
        Lesson22()
    }
}
