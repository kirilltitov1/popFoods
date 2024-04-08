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
    var id: UUID
    
    var name: String
    var fat: Double
    var protein: Double
    var carbohydrates: Double

    var recipes: [RecipeDTO]
    
    init(
        id: UUID = UUID(),
        name: String,
        fat: Double,
        protein: Double,
        carbohydrates: Double,
        recipes: [RecipeDTO]
    ) {
        self.id = id
        self.name = name
        self.fat = fat
        self.protein = protein
        self.carbohydrates = carbohydrates
        self.recipes = recipes
    }
}
