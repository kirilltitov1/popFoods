//
//  CustomRecipeDTO.swift
//  PopFoods
//
//  Created by Kirill Titov on 02.02.2024.
//

import Foundation

struct CustomRecipeDTO {
    let name: String
    let ingredients: [IngredientDTO]
    let instructions: String
    let servingSize: String
    let preparationTime: String
    let description: String
    
    init(
        name: String,
        ingredients: [IngredientDTO],
        instructions: String,
        servingSize: String,
        preparationTime: String,
        description: String
    ) {
        self.name = name
        self.ingredients = ingredients
        self.instructions = instructions
        self.servingSize = servingSize
        self.preparationTime = preparationTime
        self.description = description
    }
}
