//
//  ProfileViewModel.swift
//  InstagramClone
//
//  Created by Sergey Basin on 06.04.2021.
//

import Foundation

class ProfileViewModel: ObservableObject {
    @Published var user: User
    
    init(user: User) {
        self.user = user
    }
    
    func follow() {
        guard let uid = user.id else { return }
        UserService.follow(uid: uid) { _ in
            self.user.isFollowed = true
        }
    }
    
    func unfollow() {
        print("DEBUG: Unfollow user...")
    }
    
    func checkIfUserisFollowed() {
        
    }
}
