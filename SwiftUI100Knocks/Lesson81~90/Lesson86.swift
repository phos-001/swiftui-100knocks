//
//  Lesson86.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2024/03/11.
//

import SwiftUI

struct Lesson86: View {
    @State var items: [String] = []
    @State var showingSheet: Bool = false

    var body: some View {
        VStack {
            Text("Count: \(items.count)")

            Button {
                showingSheet = true
            } label: {
                Text("Show Sheet")
            }
        }
        .sheet(isPresented: $showingSheet) {
            AddItemView(items: $items)
        }
    }
}

struct AddItemView: View {
    @StateObject var viewState: AddItemViewState

    init(items: Binding<[String]>) {
        self._viewState = StateObject(wrappedValue: AddItemViewState(items: items))
    }

    var body: some View {
        VStack {
            Text("Count: \(viewState.items.count)")
            Button {
                viewState.addItem()
            } label: {
                Text("Add Item")
            }
        }
    }
}

class AddItemViewState: ObservableObject {
    @Binding var bindingItems: [String]
    @Published var items: [String] {
        didSet {
            bindingItems = items
        }
    }

    init(items: Binding<[String]>) {
        self._bindingItems = items
        self.items = items.wrappedValue
    }

    func addItem() {
        items.append("Item")
    }
}
#Preview {
    Lesson86()
}

