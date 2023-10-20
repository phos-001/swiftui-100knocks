//
//  Lesson46.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/10/20.
//

import SwiftUI

struct Lesson46: View {
    @State var userName: String = ""
    @State var onEditing: Bool = false
    var body: some View {
        VStack {
            Text(onEditing ? "On Editing" : "Not On Editing")
            TextField("Placeholder", text: $userName, onEditingChanged: { onEditing in
                print("onEditingChanged: \(onEditing)")
                self.onEditing = onEditing
            }, onCommit: {
                print("onCommit")
            })
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding(30)
        }
    }
}

struct Lesson46_Previews: PreviewProvider {
    static var previews: some View {
        Lesson46()
    }
}
