//
//  Lesson14.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/06/16.
//

import SwiftUI

struct Lesson14: View {
    @State var showingAlert = false
    var body: some View {
        Button("Push!") {
            self.showingAlert = true
        }.alert(isPresented: self.$showingAlert) {
            Alert(title: Text("タイトル"),
                  message: Text("メッセージ"),
                  primaryButton: .default(Text("ボタン1")) {
                print("Button1 is tapped")
            }, secondaryButton: .default(Text("ボタン2")) {
                print("Button2 is tapped")
            })
        }
    }
}

struct Lesson14_Preview: PreviewProvider {
    static var previews: some View {
        Lesson14()
    }
}
