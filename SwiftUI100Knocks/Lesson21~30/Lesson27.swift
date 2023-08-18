//
//  Lesson27.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/08/18.
//

import SwiftUI

struct Lesson27: View, MyProtocol {
    @State var text: String = "My Text"
    var body: some View {
        NavigationView {
            VStack {
                Text(text)
                NavigationLink(destination: SecondView(delegate: self)) {
                    Text("2nd View")
                }
            }
        }
    }

    func myFunc() {
        text = "Changed Text"
    }
}

protocol MyProtocol {
    func myFunc()
}

struct SecondView: View {
    var delegate: MyProtocol
    var body: some View {
        Button(action: {
            self.delegate.myFunc()
        }) {
            Text("ChangeText")
        }
    }
}

struct Lesson27_Previews: PreviewProvider {
    static var previews: some View {
        Lesson27()
    }
}
