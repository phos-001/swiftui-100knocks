//
//  Lesson19.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/07/21.
//

import SwiftUI

struct Lesson19: View {
    @State var numberString = ""
    @State var showingAlert = false
    @State var showingSheet = false

    var body: some View {
        VStack {
            TextField("Input Number", text: $numberString)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())

            Button(action: {
                guard Double(self.numberString) != nil else {
                    self.showingAlert = true
                    return
                }
                self.showingSheet = true
            }) {
                Text("Show Sheet")
            }
            .alert(isPresented: $showingAlert) {
                Alert(title: Text("Error"), message: Text("Please Input Number"), dismissButton: .default(Text("Close")))
            }
            .sheet(isPresented: $showingSheet) {
                Text("\(self.numberString) can convert to Double")
            }
        }
    }
}

struct Lesson19_Previews: PreviewProvider {
    static var previews: some View {
        Lesson19()
    }
}
