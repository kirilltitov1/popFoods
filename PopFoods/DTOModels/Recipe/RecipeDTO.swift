//
//  RecipeDTO.swift
//  PopFoods
//
//  Created by Kirill Titov on 01.02.2024.
//

import Foundation
import SwiftData

@Model
final class RecipeDTO: Identifiable, Codable {
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case servingSize
        case preparationTime
        case descript = "description"
        case imageUrl
        case instructions
        case isFavorite
    }
    
    @Attribute(.unique)
    var id: UUID

    var name: String
    var servingSize: String
    var preparationTime: String
    var descript: String
    var imageUrl: String
    var instructions: String
    var isFavorite: Bool
    
    @Relationship(inverse: \IngredientDTO.recipes)
    var ingredients: [IngredientDTO] = []
    var favoriteRecipes: [UserDTO] = []
    var recipes: [UserDTO] = []
    
    init(
        id: UUID = UUID(),
        name: String,
        servingSize: String,
        preparationTime: String,
        description: String,
        imageUrl: String,
        instructions: String,
        isFavorite: Bool
    ) {
        self.id = id
        self.name = name
        self.servingSize = servingSize
        self.preparationTime = preparationTime
        self.descript = description
        self.imageUrl = imageUrl
        self.instructions = instructions
        self.isFavorite = isFavorite
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(UUID.self, forKey: .id)
        self.name = try container.decode(String.self, forKey: .name)
        self.servingSize = try container.decode(String.self, forKey: .servingSize)
        self.preparationTime = try container.decode(String.self, forKey: .preparationTime)
        self.descript = try container.decode(String.self, forKey: .descript)
        self.imageUrl = try container.decode(String.self, forKey: .imageUrl)
        self.instructions = try container.decode(String.self, forKey: .instructions)
        self.isFavorite = try container.decode(Bool.self, forKey: .isFavorite)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encode(servingSize, forKey: .servingSize)
        try container.encode(preparationTime, forKey: .preparationTime)
        try container.encode(descript, forKey: .descript)
        try container.encode(imageUrl, forKey: .imageUrl)
        try container.encode(instructions, forKey: .instructions)
        try container.encode(isFavorite, forKey: .isFavorite)
    }
    
    @Transient
    var calories: Double {
        Double(ingredients.reduce(0, { $1.carbohydrates }))
    }
    @Transient
    var proteins: Double {
        Double(ingredients.reduce(0, { $1.protein }))
    }
    @Transient
    var fats: Double {
        Double(ingredients.reduce(0, { $1.fat }))
    }
}
