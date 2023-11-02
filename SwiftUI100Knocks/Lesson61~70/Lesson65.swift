//
//  Lesson65.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/11/02.
//

import SwiftUI

struct Lesson65: View {
    @State var showingSheet : Bool = false
    var body: some View {
        Button(
            action: { showingSheet = true },
            label: {
                Text("ShowSheet")
            })
        .sheet(isPresented: $showingSheet){
            Lesson65_FirstSheet(showingSheet: $showingSheet)
        }
    }
}

struct Lesson65_FirstSheet: View {
    @Binding var showingSheet: Bool
    var body: some View {
        NavigationView {
            NavigationLink(
                destination: Lesson65_SecondSheet(showingSheet: $showingSheet),
                label: {
                    Text("Go to SecondSheet")
                }
            )
            .navigationTitle("FirstSheet")
        }
    }
}

struct Lesson65_SecondSheet: View {
    @Binding var showingSheet: Bool
    var body: some View {
        VStack {
            Button(action: {
                showingSheet = false
            }) {
                Text("Close Sheet")
            }
        }.navigationTitle("SecondSheet")
    }
}

#Preview {
    Lesson65()
}
