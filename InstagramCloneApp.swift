//
//  InstagramCloneApp.swift
//  InstagramClone
//
//  Created by Sergey Basin on 02.04.2021.
//

import SwiftUI
import Firebase

@main
struct InstagramCloneApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(AuthViewModel.shared)
        }
    }
}
