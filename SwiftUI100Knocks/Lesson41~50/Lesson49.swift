//
//  Lesson49.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/10/20.
//

import SwiftUI

struct Lesson49: View {
    var body: some View {
        Image(systemName: "swift")
            .resizable()
            .frame(width: 200, height: 200)
            .overlay(
                Text("swift")
                    .foregroundColor(.white)
                    .font(.system(size: 20).bold())
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                    .background(.black)
                    .opacity(0.5)
            )
    }
}

struct Lesson49_Previews: PreviewProvider {
    static var previews: some View {
        Lesson49()
    }
}
