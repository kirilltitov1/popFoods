//
//  RecipeDTO.swift
//  PopFoods
//
//  Created by Kirill Titov on 01.02.2024.
//

import Foundation
import SwiftData

@Model
final class RecipeDTO: Identifiable {
    @Attribute(.unique)
    var id: UUID

    let name: String
    let servingSize: String
    let preparationTime: String
    let descript: String
    let imageUrl: String
    
    @Relationship(deleteRule: .nullify, inverse: \InstructionDTO.recipe)
    var instructions: [InstructionDTO]
    @Relationship(deleteRule: .nullify, inverse: \IngredientDTO.recipes)
    var ingredients: [IngredientDTO]
    
    init(
        id: UUID = UUID(),
        name: String,
        instructions: [InstructionDTO],
        servingSize: String,
        preparationTime: String,
        description: String,
        imageUrl: String,
        ingredients: [IngredientDTO]
    ) {
        self.id = id
        self.name = name
        self.instructions = instructions
        self.servingSize = servingSize
        self.preparationTime = preparationTime
        self.descript = description
        self.imageUrl = imageUrl
        self.ingredients = ingredients
    }
    
    @Transient
    var time: Double {
        Double(instructions.reduce(0, { $1.time }))
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
