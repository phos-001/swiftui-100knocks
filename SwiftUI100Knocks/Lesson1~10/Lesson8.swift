//
//  Lesson8.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/05/26.
//

import SwiftUI

struct Lesson8: View {
    var body: some View {
        TabView {
            Text("First Tab")
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("First")
                }
            Text("Second Tab")
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Second")
                }
            Text("Third Tab")
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("Third")
                }
        }
    }
}

struct Lesson8_Previews: PreviewProvider {
    static var previews: some View {
        Lesson8()
    }
}

