//
//  InstructionDTO.swift
//  PopFoods
//
//  Created by Kirill Titov on 20.03.2024.
//

import Foundation
import SwiftData

@Model
final class InstructionDTO: Identifiable {
    @Attribute(.unique)
    var id: UUID = UUID()
    
    let instruction: String
    let time: Int
    var recipe: RecipeDTO?
    
    init(
        id: UUID = UUID(),
        instruction: String,
        time: Int,
        recipe: RecipeDTO? = nil
    ) {
        self.id = id
        self.instruction = instruction
        self.time = time
        self.recipe = recipe
    }
}
