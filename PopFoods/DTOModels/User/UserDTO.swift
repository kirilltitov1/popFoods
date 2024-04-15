//
//  UserDTO.swift
//  PopFoods
//
//  Created by Kirill Titov on 03.02.2024.
//

import Foundation
import SwiftData

@Model
final class UserDTO: Identifiable, Codable {
    
    enum CodingKeys: CodingKey {
        case id
        case username
        case passwordHash
        case fullName
        case email
        case recipes
        case favoriteRecipes
    }
    
    @Attribute(.unique)
    var id: UUID
    
    var username: String
    var passwordHash: String
    var fullName: String
    
    @Attribute(.unique)
    var email: String
    
    @Relationship(inverse: \RecipeDTO.recipes)
    var recipes: [RecipeDTO] = []
    
    @Relationship(inverse: \RecipeDTO.favoriteRecipes)
    var favoriteRecipes: [RecipeDTO] = []
    
    init(
        id: UUID,
        username: String,
        passwordHash: String,
        fullName: String,
        email: String
    ) {
        self.id = id
        self.username = username
        self.passwordHash = passwordHash
        self.fullName = fullName
        self.email = email
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(UUID.self, forKey: .id)
        self.username = try container.decode(String.self, forKey: .username)
        self.passwordHash = try container.decode(String.self, forKey: .passwordHash)
        self.fullName = try container.decode(String.self, forKey: .fullName)
        self.email = try container.decode(String.self, forKey: .email)
        self.recipes = try container.decode([RecipeDTO].self, forKey: .recipes)
        self.favoriteRecipes = try container.decode([RecipeDTO].self, forKey: .favoriteRecipes)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(username, forKey: .username)
        try container.encode(passwordHash, forKey: .passwordHash)
        try container.encode(fullName, forKey: .fullName)
        try container.encode(email, forKey: .email)
        try container.encode(recipes, forKey: .recipes)
        try container.encode(favoriteRecipes, forKey: .favoriteRecipes)
    }
}
