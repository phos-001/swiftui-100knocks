//
//  Lesson15.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/06/16.
//

import SwiftUI

struct Lesson15: View {
    @State var showingAlert = false
    var body: some View {
        Button("Push!") {
            self.showingAlert = true
        }.alert("タイトル", isPresented: self.$showingAlert) {
            Button("ボタン1") {
                print("Button1 is Tapped")
            }
            Button("ボタン2") {
                print("Button2 is Tapped")
            }
        } message: {
            Text("メッセージ")
        }
    }
}

struct Lesson15_Preview: PreviewProvider {
    static var previews: some View {
        Lesson15()
    }
}
