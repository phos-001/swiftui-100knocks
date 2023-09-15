//
//  PasswordView.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/09/15.
//

import SwiftUI

class PasswordViewModel: ObservableObject {
    @Published var password = "" {
        didSet {
            UserDefaults.standard.set(password, forKey: "password")
        }
    }
    @Published var isActive: Bool = false
    private var isFirstAppear = true

    func onAppear() {
        guard isFirstAppear else {
            return
        }
        isFirstAppear = false

        guard let password = UserDefaults.standard.string(forKey: "email") else {
            return
        }
        self.password = password

        // Validation
        if self.password.count > 8 {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                self.isActive = true
            }
        }
    }
}

struct PasswordView: View {
    @ObservedObject var passwordViewModel = PasswordViewModel()
    var body: some View {
        NavigationStack() {
            VStack(spacing: 16) {
                TextField("password", text: $passwordViewModel.password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                NavigationLink("Next") {
                    CompleteView()
                }
                Spacer()
            }
            .navigationDestination(isPresented: $passwordViewModel.isActive) {
                CompleteView()
            }
        }
        .onAppear {
            self.passwordViewModel.onAppear()
        }
        .padding()
        .navigationBarTitle("Password")
    }
}

struct PasswordView_Previews: PreviewProvider {
    static var previews: some View {
        PasswordView()
    }
}
