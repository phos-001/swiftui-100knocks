//
//  Lesson62.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/10/25.
//

import SwiftUI

struct Lesson62: View {
    @State var enable: Bool = true
    var body: some View {
        VStack {
            Toggle(isOn: $enable) {
                Text("isEnable: \(enable.description)")
            }
            Button {
                print("Tap Button")
            } label: {
                Text("Tap(\(enable ? "Enable" : "Disable"))")
                    .foregroundColor(.white)
                    .padding()
                    .background(enable ? .orange: .gray)
                    .cornerRadius(10)
            }
            .disabled(!enable)
        }
        .padding()
    }
}

#Preview {
    Lesson62()
}
