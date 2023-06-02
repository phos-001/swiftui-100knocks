//
//  Lesson13.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/06/02.
//

import SwiftUI

struct Lesson13: View {
    var body: some View {
        List {
            Section(header: Text("果物")){
                Text("りんご")
                Text("みかん")
            }
            Section(header: Text("乗り物")){
                Text("車")
                Text("自転車")
            }
        }
        .listStyle(PlainListStyle())
    }
}

struct Lesson13_Previews: PreviewProvider {
    static var previews: some View {
        Lesson13()
    }
}
