//
//  Lesson37.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/10/10.
//

import SwiftUI

struct Lesson37: View {
    @State var views = [
    TutorialView(imageName: "swift", text: "First"),
    TutorialView(imageName: "swift", text: "Second"),
    TutorialView(imageName: "swift", text: "Third"),
    TutorialView(imageName: "swift", text: "Fourth")]

    var body: some View {
        PageView(views)
            .background(Color.gray)
            .edgesIgnoringSafeArea(.all)
    }
}

struct Lesson37_Previews: PreviewProvider {
    static var previews: some View {
        Lesson37()
    }
}
