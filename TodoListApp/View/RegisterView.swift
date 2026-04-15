//
//  RegisterView.swift
//  TodoListApp
//
//  Created by Daiyong Kim on 2026-04-13.
//

import SwiftUI

struct RegisterView: View {
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
                Spacer()
            }
            .frame(width: geo.size.width, height: geo.size.height)
            .ignoresSafeArea(edges: .top)
        }
    }
}

#Preview {
    RegisterView()
}
