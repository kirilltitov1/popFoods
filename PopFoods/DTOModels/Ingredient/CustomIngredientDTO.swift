//
//  CustomIngredientDTO.swift
//  PopFoods
//
//  Created by Kirill Titov on 02.02.2024.
//

import Foundation

struct CustomIngredientDTO: Codable {
    let name: String
    let fat: Int
    let protein: Int
    let carbohydrates: Int
}
