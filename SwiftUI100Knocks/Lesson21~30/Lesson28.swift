//
//  Lesson28.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/08/18.
//

import SwiftUI

struct Lesson: Identifiable {
    var id: Int
    var title: String
    var view: ViewEnum
}

enum ViewEnum {
    case lesson24
    case lesson25
    case lesson26
    case lesson27
}

let lessons: [Lesson] = [
    Lesson(id: 24, title: "Lesson24", view: .lesson24),
    Lesson(id: 25, title: "Lesson25", view: .lesson25),
    Lesson(id: 26, title: "Lesson26", view: .lesson26),
    Lesson(id: 27, title: "Lesson27", view: .lesson27)
]

struct Lesson28: View {
    var body: some View {
        NavigationView {
            VStack {
                Divider()
                List (lessons) { lesson in
                    self.containedView(lesson: lesson)
                }
                    .edgesIgnoringSafeArea([.bottom])
            }
        }
    }

    func containedView(lesson: Lesson) -> AnyView {
        switch lesson.view {
        case .lesson24: return AnyView(NavigationLink (destination: Lesson24()) {
                    Text(lesson.title)
                })
        case .lesson25: return AnyView(NavigationLink (destination: Lesson25()) {
                    Text(lesson.title)
                })
        case .lesson26: return AnyView(NavigationLink (destination: Lesson26()) {
                    Text(lesson.title)
                })
        case .lesson27: return AnyView(NavigationLink (destination: Lesson27()) {
                    Text(lesson.title)
                })
        }
    }
}

struct Lesson28_Previews: PreviewProvider {
    static var previews: some View {
        Lesson28()
    }
}
