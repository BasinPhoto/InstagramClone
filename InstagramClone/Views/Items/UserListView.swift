//
//  UserListView.swift
//  InstagramClone
//
//  Created by Sergey Basin on 03.04.2021.
//

import SwiftUI

struct UserListView: View {
    @ObservedObject var viewModel: SearchViewModel
    @Binding var searchText: String
    
    var users: [User] {
        return searchText.isEmpty ? viewModel.users : viewModel.filteredUser(searchText)
    }
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(users) { user in
                    NavigationLink(
                        destination: ProfileView(user: user),
                        label: {
                            UserCell(user: user)
                                .padding(.leading)
                        })
                }
            }
        }
    }
}
