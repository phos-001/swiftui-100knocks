//
//  Lesson75.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2024/01/22.
//

import SwiftUI

struct Lesson75: View {
    @State var tabSelection: Int = 0

    var body: some View {
        TabView(selection: $tabSelection) {
            FirstView(tabSelection: $tabSelection)
                .tabItem {
                    Image(systemName: "house")
                        .renderingMode(.template)
                    Text("FirstView")
                }
                .tag(0)
            SecondView(tabSelection: $tabSelection)
                .tabItem {
                    Image(systemName: "books.vertical")
                        .renderingMode(.template)
                    Text("SecondView")
                }
                .tag(1)
        }
    }
}

private struct FirstView: View {
    @Binding var tabSelection: Int
    var body: some View {
        VStack {
            Text("FirstView")
            Button {
                tabSelection = 1
            } label: {
                Text("Go to SecondView")
            }
        }
    }
}

private struct SecondView: View {
    @Binding var tabSelection: Int
    var body: some View {
        VStack {
            Text("SecondView")
            Button {
                tabSelection = 0
            } label: {
                Text("Go to FirstView")
            }
        }
    }
}

#Preview {
    Lesson75()
}
