//
//  InputView.swift
//  SwiftUI100Knocks
//
//  Created by 林悠斗 on 2023/10/20.
//

import SwiftUI

protocol InputViewDelegate {
    func addTask(text: String)
}

struct InputView: View {
    @Environment(\.presentationMode) var presentation
    let delegate: InputViewDelegate
    @State var text: String
    var body: some View {
        VStack(spacing: 10) {
            TextField("Input Your TODO", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(20)
            Button("Add") {
                delegate.addTask(text: text)
                presentation.wrappedValue.dismiss()
            }
            .frame(width: 100, height: 40)
            .background(.orange)
            .foregroundColor(.white)
            .cornerRadius(20)
            .padding()
        }
    }
}
