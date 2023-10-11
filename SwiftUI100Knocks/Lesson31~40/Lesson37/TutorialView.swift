//
//  TutorialView.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/10/11.
//

import SwiftUI

struct TutorialView: View {
    let imageName: String
    let text: String
    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            Text(text)
            HStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.red)
                    .frame(width: 200, height: 200)
            }
            Spacer()
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct TutorialView_Previews: PreviewProvider {
    static var previews: some View {
        TutorialView(imageName: "swift", text: "This is Tutorial!!!")
    }
}
