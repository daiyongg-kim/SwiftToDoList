//
//  TLButton.swift
//  TodoListApp
//
//  Created by Daiyong Kim on 2026-04-14.
//

import SwiftUI

struct TLButton: View {
    
    let title: String
    let backgroundColor: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack{
                RoundedRectangle(cornerRadius: 5)
                    .foregroundColor(backgroundColor)

                Text(title)
                    .foregroundStyle(Color.white)
                    .bold()
            }
        }
    }
}

#Preview {
    TLButton(title:"dummy", backgroundColor: .pink){
        //
    }
}
