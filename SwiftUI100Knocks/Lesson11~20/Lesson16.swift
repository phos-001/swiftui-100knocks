//
//  Lesson16.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/07/14.
//

import SwiftUI

struct Lesson16: View {
    @State var showingButton1Alert = false
    @State var showingButton2Alert = false
    var body: some View {
        VStack {
            Button("Button1") {
                self.showingButton1Alert = true
            }.alert("Alert1", isPresented: self.$showingButton1Alert) {
                Button("Close") {
                    print("Button1 is Tapped")
                }
            } message: {
                Text("Message")
            }
            Button("Button2") {
                self.showingButton2Alert = true
            }.alert("Alert2", isPresented: self.$showingButton2Alert) {
                Button("Close") {
                    print("Button2 is Tapped")
                }
            } message: {
                Text("Message")
            }
        }
    }
}

struct Lesson16_Previews: PreviewProvider {
    static var previews: some View {
        Lesson16()
    }
}
