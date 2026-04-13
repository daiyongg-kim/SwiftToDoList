//
//  TodoListAppApp.swift
//  TodoListApp
//
//  Created by Daiyong Kim on 2026-04-10.
//

import FirebaseCore
import SwiftUI

@main
struct TodoListAppApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
