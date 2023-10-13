//
//  Lesson40.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/10/13.
//

import SwiftUI

struct Lesson40: View {
    @State private var isPresentFullModal = false
    @Environment(\.dismiss) var dismiss
    var body: some View {
        Button(action: {
            isPresentFullModal.toggle()
        }) {
            Text("Show Full Modal")
        }.fullScreenCover(isPresented: $isPresentFullModal) {
            Lesson40_2()
        }
    }
}

struct Lesson40_2: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        Button(action: {
            dismiss()
        }) {
            Text("Close")
        }
    }
}

struct Lesson40_Previews: PreviewProvider {
    static var previews: some View {
        Lesson40()
    }
}
