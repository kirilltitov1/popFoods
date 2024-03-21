//
//  InstructionDTO.swift
//  PopFoods
//
//  Created by Kirill Titov on 20.03.2024.
//

import Foundation

struct InstructionDTO: Codable, Identifiable {
    var id: UUID = UUID()
    
    let instruction: String
    let time: Int
    let ingredients: [IngredientDTO]
}
