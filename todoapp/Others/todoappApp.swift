//
//  todoappApp.swift
//  todoapp
//
//  Created by Metehan Olgun on 5.02.2025.
//

import Firebase // Firebase is imported here to configure it.
import SwiftUI

@main
struct todoappApp: App {
    
    init() {
        FirebaseApp.configure() // Firebase is configured here.
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
