//
//  ProfileView.swift
//  InstagramClone
//
//  Created by Sergey Basin on 02.04.2021.
//

import SwiftUI

struct ProfileView: View {
    let user: User
    @ObservedObject var viewModel: ProfileViewModel
    
    init(user: User) {
        self.user = user
        viewModel = ProfileViewModel(user: user)
    }
    
    var body: some View {
        ScrollView {
            VStack(spacing: 32) {
                ProfileHeaderView(viewModel: viewModel)
                PostGridView()
            }
            .padding(.top)
        }
    }
}
