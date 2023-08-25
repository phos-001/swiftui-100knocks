//
//  Lesson32.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/08/25.
//

import SwiftUI

struct Lesson32: View {
    var body: some View {
        NavigationView {
            Text("ナビゲーションバーを隠しています")
                .navigationBarTitle("Title")
                .navigationBarHidden(true)
        }
    }
}

struct Lesson32_Previews: PreviewProvider {
    static var previews: some View {
        Lesson32()
    }
}
