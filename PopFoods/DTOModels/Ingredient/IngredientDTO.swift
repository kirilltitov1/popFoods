//
//  IngredientDTO.swift
//  PopFoods
//
//  Created by Kirill Titov on 01.02.2024.
//

import Foundation
import SwiftData

@Model
final class IngredientDTO: Identifiable, Codable {
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case fat
        case protein
        case carbohydrates
    }
    
    @Attribute(.unique)
    var id: UUID
    
    var name: String
    var fat: Double
    var protein: Double
    var carbohydrates: Double

    var recipes: [RecipeDTO] = []
    
    init(
        id: UUID = UUID(),
        name: String,
        fat: Double,
        protein: Double,
        carbohydrates: Double
    ) {
        self.id = id
        self.name = name
        self.fat = fat
        self.protein = protein
        self.carbohydrates = carbohydrates
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(UUID.self, forKey: .id)
        self.name = try container.decode(String.self, forKey: .name)
        self.fat = try container.decode(Double.self, forKey: .fat)
        self.protein = try container.decode(Double.self, forKey: .protein)
        self.carbohydrates = try container.decode(Double.self, forKey: .carbohydrates)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encode(fat, forKey: .fat)
        try container.encode(protein, forKey: .protein)
        try container.encode(carbohydrates, forKey: .carbohydrates)
    }
}
