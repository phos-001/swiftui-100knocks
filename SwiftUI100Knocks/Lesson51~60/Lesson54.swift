//
//  Lesson54.swift
//  SwiftUI100Knocks
//
//  Created by 林悠斗 on 2023/10/21.
//

import SwiftUI

struct Lesson54: View {
    @State var name = ""
    @State var showingModal = false
    var body: some View {
        VStack(spacing: 16) {
            TextField("Input Name", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(30)
            Text("Name: \(name)")
            Button {
                showingModal = true
            } label: {
                Text("Show Modal")
                    .font(Font.system(size: 20))
                    .foregroundColor(.white)
                    .padding(16)
                    .background(.gray)
                    .cornerRadius(16)
            }
            .sheet(isPresented: $showingModal) {
                NameView(name: name)
            }
        }
    }
}

struct NameView: View {
    let name: String
    var body: some View {
        Text("Name: \(name)")
    }
}

#Preview {
    Lesson54()
}
