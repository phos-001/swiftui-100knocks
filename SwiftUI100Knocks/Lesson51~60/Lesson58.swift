//
//  Lesson58.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/10/23.
//

import SwiftUI

struct Lesson58: View {
    @State var showingPopUp = false
    var body: some View {
        ZStack {
            Button(action: {
                withAnimation {
                    showingPopUp = true
                }
            }, label: {
                Text("Show PopUp")
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
            })

            if showingPopUp {
                PopUpView(isPresent: $showingPopUp)
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(Color.gray)
        .ignoresSafeArea()
    }
}

struct PopUpView: View {
    @Binding var isPresent: Bool
    var body: some View {
        VStack(spacing: 12) {
            Text("Swift")
            Image(systemName: "swift")
                .resizable()
                .foregroundColor(.red)
                .frame(width: 40, height: 40)
            Text("SwiftはAppleのiOSおよびmacOS、Linux、Windowsで利用できるプログラミング言語である。")
            Button(action: {
                withAnimation {
                    isPresent = false
                }
            }, label: {
                Text("Close")
            })
        }
        .frame(width: 280, alignment: .center)
        .padding()
        .background(.white)
        .cornerRadius(12)
    }
}

#Preview {
    Lesson58()
}

