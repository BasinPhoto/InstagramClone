//
//  ContentView.swift
//  InstagramClone
//
//  Created by Sergey Basin on 02.04.2021.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    @State var selectedIndex = 0
    
    var body: some View {
        Group {
            if viewModel.userSession == nil {
                LoginView()
            } else {
                if let user = viewModel.currentUser {
                    MainTabView(user: user, selectedIndex: $selectedIndex)
                }
                
            }
        }
    }
}
