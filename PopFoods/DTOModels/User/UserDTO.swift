//
//  UserDTO.swift
//  PopFoods
//
//  Created by Kirill Titov on 03.02.2024.
//

import Foundation

struct UserDTO: Codable {
    var username: String
    var passwordHash: String
    var fullName: String
    var email: String
}
