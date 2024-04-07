//
//  IngredientDTO.swift
//  PopFoods
//
//  Created by Kirill Titov on 01.02.2024.
//

import Foundation
import SwiftData

@Model
final class IngredientDTO {
    @Attribute(.unique)
    let id: UUID
    
    let name: String
    let fat: Double
    let protein: Double
    let carbohydrates: Double
    
    // MARK: Relationships
    @Relationship(deleteRule: .nullify, inverse: \RecipeDTO.instructions)
    var recipes: [RecipeDTO]?
    
    init(
        id: UUID = UUID(),
        name: String,
        fat: Double,
        protein: Double,
        carbohydrates: Double,
        recipes: [RecipeDTO]? = nil
    ) {
        self.id = id
        self.name = name
        self.fat = fat
        self.protein = protein
        self.carbohydrates = carbohydrates
        self.recipes = recipes
    }
}