//
//  Lesson38.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/10/11.
//

import SwiftUI

struct Lesson38: View {
    @State private var isPresented = false

    var body: some View {
        VStack {
            Text("Main View")
                .font(.title)
                .padding()
            Button(action: {
                self.isPresented = true
            }) {
                Text("Show Modal")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .sheet(isPresented: $isPresented) {
                ModalView(isPresented: $isPresented).interactiveDismissDisabled()
            }
        }
    }
}

struct Lesson38_Previews: PreviewProvider {
    static var previews: some View {
        Lesson38()
    }
}
