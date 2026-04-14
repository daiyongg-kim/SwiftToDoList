//
//  HeaderView.swift
//  TodoListApp
//
//  Created by Daiyong Kim on 2026-04-13.
//

import SwiftUI

struct HeaderView: View {
    var width: CGFloat
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
              .foregroundColor(Color.pink)
              .rotationEffect(Angle(degrees: 15))
              .offset(x: 0, y: 0)
          VStack {
              Text("To Do List")
                  .font(.system(size: 50))
                  .foregroundColor(Color.white)
                  .bold()
              Text("Get Things done")
                  .font(.system(size: 30))
                  .foregroundColor(Color.white)
          }
      }
      .frame(width: width, height: 400)
      .offset(x: 0, y: 0)
    }
}

#Preview {
    GeometryReader{ geo in
        HeaderView(width: geo.size.width)
    }
}
