//
//  LoginView.swift
//  TodoListApp
//
//  Created by Daiyong Kim on 2026-04-13.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    
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
                        TextField("Email Address", text: $email)
                            .textFieldStyle(DefaultTextFieldStyle())
                        SecureField("Password", text: $password)
                            .textFieldStyle(DefaultTextFieldStyle())
                        Button {
                            // Attemp Login
                        } label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 5)
                                    .foregroundColor(Color.blue)

                                Text("Log In")
                                    .foregroundStyle(Color.white)
                                    .bold()
                            }
                        }
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
    LoginView()
}
