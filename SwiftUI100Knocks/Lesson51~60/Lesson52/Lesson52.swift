//
//  Lesson52.swift
//  SwiftUI100Knocks
//
//  Created by 林悠斗 on 2023/10/20.
//

import SwiftUI

struct Lesson52: View, InputViewDelegate {
    @State var tasks: [String] = []
    var body: some View {
        NavigationView {
            ZStack(alignment: .bottomTrailing) {
                List {
                    ForEach(tasks, id: \.self) { user in
                        Text(user)
                    }
                    .onDelete(perform: delete)
                }
                NavigationLink(destination: InputView(delegate: self, text: "")) {
                    Text("Add")
                        .foregroundColor(Color.white)
                        .font(Font.system(size: 20))
                }
                .frame(width: 60, height: 60)
                .background(Color.orange)
                .cornerRadius(30)
                .padding()
                
            }
            .onAppear {
                if let tasks = UserDefaults.standard.array(forKey: "TODO") as? [String] {
                    self.tasks = tasks
                }
            }
            .navigationTitle("TODO")
            .navigationBarItems(trailing: EditButton())
        }
    }
    
    func delete(at offsets: IndexSet) {
        tasks.remove(atOffsets: offsets)
        UserDefaults.standard.setValue(tasks, forKey: "TODO")
    }
    
    func addTask(text: String) {
        tasks.append(text)
        UserDefaults.standard.setValue(tasks, forKey: "TODO")
    }
}

#Preview {
    Lesson52()
}
