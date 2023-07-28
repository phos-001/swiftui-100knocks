//
//  Lesson25.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/07/28.
//

import SwiftUI

struct Lesson25: View {
    @State private var users = ["A", "B", "C"]
    var body: some View {
        NavigationView {
            List {
                ForEach(users, id: \.self) { user in
                    Text(user)
                }
                .onDelete(perform: delete)
            }
            .navigationBarItems(trailing: EditButton())
        }
    }

    func delete(at offsets: IndexSet) {
        users.remove(atOffsets: offsets)
    }
}

struct Lesson25_Previews: PreviewProvider {
    static var previews: some View {
        Lesson25()
    }
}
