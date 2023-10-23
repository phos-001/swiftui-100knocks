//
//  Lesson59.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/10/23.
//

import SwiftUI

struct Lesson59: View {
    @State var showingVStackAlert = false
    @State var showingHStackAlert = false
    var body: some View {
        HStack {
            VStack {
                Button {
                    showingVStackAlert = true
                } label: {
                    Text("Show VStack Alert")
                }.padding()

                Button {
                    showingHStackAlert = true
                    
                } label: {
                    Text("Show HStack Alert")
                }.padding()
            }
            .alert(isPresented: $showingVStackAlert) { () -> Alert in
                Alert(title: Text("VStack"), message: Text("This is VStack Alert"), dismissButton: .cancel())
            }
        }
        .alert(isPresented: $showingHStackAlert) { () -> Alert in
            Alert(title: Text("HStack"), message: Text("This is HStack Alert"), dismissButton: .cancel())
        }
    }
}

#Preview {
    Lesson59()
}
