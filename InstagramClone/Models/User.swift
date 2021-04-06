//
//  User.swift
//  InstagramClone
//
//  Created by Sergey Basin on 06.04.2021.
//

import Foundation
import FirebaseFirestoreSwift

struct User: Identifiable, Decodable {
    let username: String
    let email: String
    let profileImageUrl: String
    let fullname: String
    @DocumentID var id: String?
    var isFollowed: Bool? = false

    var isCurrentUser: Bool {
        return AuthViewModel.shared.userSession?.uid == id
    }
}
