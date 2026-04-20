//
//  LoginView.swift
//  TodoListApp
//
//  Created by Daiyong Kim on 2026-04-13.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            GeometryReader{ geo in
                VStack(spacing: 0){
                    // Header
                    HeaderView(
                        width: geo.size.width,
                        title: "To Do List",
                        subtitle: "Get things done",
                        bottomTrailing: 0.80,
                        bottomLeading: 0.55,
                        background: Color(red: 0.91, green: 0.38, blue: 0.40)
                    )

                    
                    // Login Form
                    Form {
                        if !viewModel.errorMessage.isEmpty {
                            Text(viewModel.errorMessage)
                                .foregroundColor(.red)
                        }
                        TextField("Email Address", text: $viewModel.email)
                            .textFieldStyle(DefaultTextFieldStyle())
                        SecureField("Password", text: $viewModel.password)
                            .textFieldStyle(DefaultTextFieldStyle())
                        
                        TLButton(
                            title:"Log In",
                            backgroundColor: .blue){
                                viewModel.login()
                        }
                        .padding()
                    }

                    // Create Account
                    VStack{
                        Text("New around here?")
                        NavigationLink("Create An Account", destination: RegisterView())
                    }
                    .padding(.bottom, 50)

                    Spacer()
                }
                .frame(width: geo.size.width, height: geo.size.height)
                .ignoresSafeArea(edges: .top)
                
                
            }
        }
        
    }
}

#Preview {
//    LoginView()
}
