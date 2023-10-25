//
//  Lesson63.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/10/25.
//

import SwiftUI

struct Lesson63: View {
    @State var numberString = ""
    var body: some View {
        TextField("Input Number", text: $numberString)
            .keyboardType(.decimalPad)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
    }
}

#Preview {
    Lesson63()
}
