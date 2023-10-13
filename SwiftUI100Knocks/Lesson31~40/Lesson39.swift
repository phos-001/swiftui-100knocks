//
//  Lesson39.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/10/13.
//

import SwiftUI

struct Lesson39: View {
    @State private var isPresentModal = false
    @State private var isPresentFullModal = false
    var body: some View {
        Button(action: {
            isPresentModal.toggle()
        }) {
            Text("Show Modal")
        }.sheet(isPresented: $isPresentModal) {
            Button(action: {
                isPresentFullModal.toggle()
            }) {
                Text("Show Full Modal")
            }.fullScreenCover(isPresented: $isPresentFullModal) {
                Text("Full Modal")
            }
        }
    }
}

struct Lesson39_Previews: PreviewProvider {
    static var previews: some View {
        Lesson39()
    }
}
