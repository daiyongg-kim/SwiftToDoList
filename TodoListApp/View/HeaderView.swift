//
//  HeaderView.swift
//  TodoListApp
//
//  Created by Daiyong Kim on 2026-04-13.
//

import SwiftUI

struct DiagonalShape: Shape {
    var bottomTrailing: CGFloat = 0.80
    var bottomLeading: CGFloat = 0.55

    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: rect.height * bottomTrailing))
        path.addLine(to: CGPoint(x: 0, y: rect.height * bottomLeading))
        path.closeSubpath()
        return path
    }
}

struct HeaderView: View {
    var width: CGFloat
    let title: String
    let subtitle: String
    var bottomTrailing: CGFloat = 0.80
    var bottomLeading: CGFloat = 0.55
    var background: Color = Color(red: 0.91, green: 0.38, blue: 0.40)

    var body: some View {
        ZStack {
            DiagonalShape(bottomTrailing: bottomTrailing, bottomLeading: bottomLeading)
                .foregroundColor(background)

            VStack(spacing: 8) {
                Text(title)
                    .font(.system(size: 50, weight: .bold))
                    .foregroundColor(.white)
                Text(subtitle)
                    .font(.system(size: 24))
                    .foregroundColor(.white)
            }
            .offset(y: -40)
        }
        .frame(width: width, height: 400)
    }
}

#Preview {
    GeometryReader { geo in
        HeaderView( width: geo.size.width, title: "To Do List", subtitle: "Get things done")
    }
}
