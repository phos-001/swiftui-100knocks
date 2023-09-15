//
//  CompleteView.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/09/15.
//

import SwiftUI

struct CompleteView: View {
    @State var password: String = ""
    var body: some View {
        Text("Complete")
            .padding()
            .navigationBarTitle("Complete")
    }
}

struct CompleteView_Previews: PreviewProvider {
    static var previews: some View {
        CompleteView()
    }
}
