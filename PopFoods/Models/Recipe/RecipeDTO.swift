//
//  RecipeDTO.swift
//  PopFoods
//
//  Created by Kirill Titov on 01.02.2024.
//

import Foundation

struct RecipeDTO: Codable, Identifiable {
    let id: UUID = UUID()
    
    let name: String
    let ingredients: [IngredientDTO]
    let instructions: String
    let servingSize: String
    let preparationTime: String
    let description: String
    let imageUrl: String
    let time: String
}
