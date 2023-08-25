//
//  Lesson31.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/08/25.
//

import SwiftUI

struct Lesson31: View {
    @State private var showingSheet = false

    var body: some View {
        Button("Sheetを開く") {
            self.showingSheet.toggle()
        }
        .fullScreenCover(isPresented: $showingSheet) {
            SheetView()
        }
    }
}

struct Lesson31_Previews: PreviewProvider {
    static var previews: some View {
        Lesson31()
    }
}
