//
//  RecipeDTO.swift
//  PopFoods
//
//  Created by Kirill Titov on 01.02.2024.
//

import Foundation

struct RecipeDTO: Codable {
    let name: String
    let ingredients: [IngredientDTO]
    let instructions: String
    let servingSize: String
    let preparationTime: String
    let description: String
}
