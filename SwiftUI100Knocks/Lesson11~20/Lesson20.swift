//
//  Lesson20.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/07/21.
//

import SwiftUI

struct Lesson20: View {
    @State var isActive = false

    var body: some View {
        NavigationStack {
            Button(action: {
                self.isActive = true
            }) {
                Text("Tap Me!")
            }.navigationDestination(isPresented: $isActive) {
                Text("SecondView")
            }
        }
    }

}

struct Lesson20_Previews: PreviewProvider {
    static var previews: some View {
        Lesson20()
    }
}
