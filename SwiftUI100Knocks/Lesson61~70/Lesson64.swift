//
//  Lesson64.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/10/25.
//

import SwiftUI

struct Lesson64: View {
    @State var isActive: Bool = false
    var body: some View {
        NavigationView() {
            NavigationLink("Go to SecondView") {
                Lesson64_SecondView()
            }
            .navigationTitle("RootView")
        }
    }
}

struct Lesson64_SecondView: View {
    var body: some View {
        NavigationLink(destination: Lesson64_ThirdView()) {
            Text("Go to ThirdView")
        }
        .navigationTitle("SecondView")
    }
}

struct Lesson64_ThirdView: View {
    var body: some View {
        Button("Go back to Root View") {
            let scenes = UIApplication.shared.connectedScenes
            let windowScenes = scenes.first as? UIWindowScene
            if let window = windowScenes?.windows.first {
                window.rootViewController = UIHostingController(rootView: Lesson64())
            }
        }
        .navigationTitle("ThirdView")
    }
}

#Preview {
    Lesson64()
}
