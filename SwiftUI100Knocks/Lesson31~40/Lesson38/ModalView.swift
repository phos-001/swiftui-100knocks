//
//  ModalView.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/10/11.
//

import SwiftUI

struct ModalView: View {
    @Binding var isPresented: Bool
    var body: some View {
        ZStack {
            Color.black.opacity(0.4)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Modal View")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                Button(action: {
                    isPresented = false
                }) {
                    Text("Close")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
