//
//  EmailView.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/09/15.
//

import SwiftUI

class EmailViewModel: ObservableObject {
    @Published var email = "" {
        didSet {
            UserDefaults.standard.set(email, forKey: "email")
        }
    }
    @Published var isActive: Bool = false
    private var isFirstAppear = true

    func onAppear() {
        guard isFirstAppear else { return }
        isFirstAppear = false

        guard let email = UserDefaults.standard.string(forKey: "email") else { return }
        self.email = email

        // Validation
        if self.email.count > 8 {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                self.isActive = true
            }
        }
    }
}

struct EmailView: View {
    @ObservedObject var emailViewModel = EmailViewModel()
    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                TextField("email", text: $emailViewModel.email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                NavigationLink("Next") {
                    PasswordView()
                }
                Spacer()
            }
            .padding()
            .navigationTitle("Email")
        }
    }
}

struct EmailView_Previews: PreviewProvider {
    static var previews: some View {
        EmailView()
    }
}
