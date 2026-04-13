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
        GeometryReader{ geo in
            VStack{
                // Header
                HeaderView(width: geo.size.width)
                // Login Form
                Form {
                    TextField("Email Address", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    SecureField("Password", text:$password)
                    Button {
                        // Attemp Login
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color.blue)
                            
                            Text("Login")
                                .foregroundStyle(Color.white)
                                .bold()
                        }
                    }
                }
                
                // Crate Account
            }
            .frame(width: geo.size.width, height: geo.size.height)
        }
    }
}

#Preview {
    LoginView()
}
