//
//  IngredientDTO.swift
//  PopFoods
//
//  Created by Kirill Titov on 01.02.2024.
//

import Foundation

struct IngredientDTO: Codable {
    let name: String
    let fat: Int
    let protein: Int
    let carbohydrates: Int
}
