//
//  Lesson30.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/08/22.
//

import SwiftUI

struct Lesson30: View {
    @State private var showingSheet = false

    var body: some View {
        Button("Sheetを開く") {
            self.showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            SheetView()
        }
    }
}

struct SheetView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        Button("Sheetを閉じる") {
            dismiss()
        }
    }
}

struct Lesson30_Previews: PreviewProvider {
    static var previews: some View {
        Lesson30()
    }
}
