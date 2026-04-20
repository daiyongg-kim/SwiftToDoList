//
//  RegisterView.swift
//  TodoListApp
//
//  Created by Daiyong Kim on 2026-04-13.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel: RegisterViewModel()
    
    
    var body: some View {
        GeometryReader{ geo in
            VStack(spacing: 0){
                HeaderView(
                    width: geo.size.width,
                    title: "Register",
                    subtitle: "Start organizing todos",
                    bottomTrailing: 0.55,
                    bottomLeading: 0.80,
                    background: .orange
                )
                Form {
                    TextField("Full Name",text : $viewModel.name)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocorrectionDisabled()
                    
                    TextField("Email Address",text : $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                    
                    SecureField("Password",text : $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(
                        title: "Create Account",
                        backgroundColor: .green){
                            //Attempt registeration
                        }
                        .padding()
                }
                Spacer()
            }
            .frame(width: geo.size.width, height: geo.size.height)
            .ignoresSafeArea(edges: .top)
        }
    }
}

#Preview {
//    RegisterView(text:"", email:"", password: "")
}
