//
//  Lesson17.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/07/14.
//

import SwiftUI

struct Lesson17: View {
    @State var showingAlert1 = false
    @State var showingAlert2 = false
    var body: some View {
        VStack {
            Button("Show Alert1") {
                self.showingAlert1 = true
            }.alert(isPresented: self.$showingAlert1) {
                Alert(title: Text("Alert1"),
                      message: Text("Message"),
                      primaryButton: .default(Text("OK")) {
                    print("Alert1:OK")
                }, secondaryButton: .default(Text("Close")) {
                    print("Alert1:Close")
                })
            }
            Button("Show Alert2") {
                self.showingAlert2 = true
            }.alert(isPresented: self.$showingAlert2) {
                Alert(title: Text("Alert2"),
                      message: Text("Message"),
                      primaryButton: .default(Text("OK")) {
                    print("Alert2:OK")
                }, secondaryButton: .default(Text("Close")) {
                    print("Alert2:Close")
                })
            }
        }
    }
}

struct Lesson17_Previews: PreviewProvider {
    static var previews: some View {
        Lesson17()
    }
}
