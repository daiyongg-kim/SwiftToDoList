//
//  RegisterViewViewModel.swift
//  TodoListApp
//
//  Created by Daiyong Kim on 2026-04-13.
//

import Foundation

class RegisterViewViewModel: ObservableObject {
    @Published var name: String = ""
    @Published var email: String = ""
    @Published var password: String = ""
    
    init() {
        
    }
    
    func register() {
        guard validate() else {
            return
        }
    }
    
    private func validate() -> Bool {
        guard name.trimmingCharacters(in: .whitespacesAndNewlines).count > 0,
              email.trimmingCharacters(in: .whitespacesAndNewlines).count > 0,
              password.trimmingCharacters(in: .whitespacesAndNewlines).count > 0 else {
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            return false
        }
        
        
        return true
    }
}
