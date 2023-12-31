//
//  User.swift
//  Messenger
//
//  Created by Mehdi on 10/08/2023.
//

import Foundation
import FirebaseFirestoreSwift

struct User: Codable, Identifiable, Hashable {
    @DocumentID var uid: String?
    let fullname: String
    let email: String
    var profileImageUrl: String?
    
    var id: String {
        return uid ?? NSUUID().uuidString
    }
}

extension User {
    static let MOCK_USER = User(fullname: "Mehdi", email: "mehdi@gmail.com", profileImageUrl: "Profile")
}
