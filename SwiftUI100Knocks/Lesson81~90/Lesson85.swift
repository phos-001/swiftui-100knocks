//
//  Lesson85.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2024/03/11.
//

import SwiftUI
import UniformTypeIdentifiers

struct Lesson85: View {
    @State private var fileURL: URL?
    @State private var showingPicker = false

    var body: some View {
        VStack {
            Button {
                let documentDirectoryURL = FileManager.default.urls(for: .documentDirectory,
                                                                    in: .userDomainMask).first!
                let fileURL = documentDirectoryURL.appendingPathComponent("abc.txt")
                try! "A B C".data(using: .utf8)!.write(to: fileURL, options: .atomic)
            } label: {
                Text("Save File to Document")
            }
            Button {
                showingPicker = true
            } label: {
                Text("Show File Picker")
            }
            Text("FielURL: \(fileURL?.description ?? "nil")")
        }
        .sheet(isPresented: $showingPicker) {
            DocumentPickerView(fileUrl: $fileURL)
        }
    }
}

struct DocumentPickerView: UIViewControllerRepresentable {
    @Binding var fileUrl: URL?

    class Coordinator: NSObject, UIDocumentPickerDelegate {
        var parent: DocumentPickerView

        init(_ parent: DocumentPickerView) {
            self.parent = parent
        }

        func documentPicker(_ controller: UIDocumentPickerViewController, didPickDocumentAt url: URL) {
            self.parent.fileUrl = url
        }
    }

    func makeUIViewController(context: Context) -> UIDocumentPickerViewController {
        let documentPickerViewController = UIDocumentPickerViewController(forOpeningContentTypes: [UTType.text])
        documentPickerViewController.delegate = context.coordinator
        return documentPickerViewController
    }

    func updateUIViewController(_ uiViewController: UIDocumentPickerViewController, context: Context) {}

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
}

#Preview {
    Lesson85()
}

