//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Grazi  Berti on 08/05/23.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
