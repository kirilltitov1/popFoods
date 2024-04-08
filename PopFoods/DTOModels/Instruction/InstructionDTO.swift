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
    
    var instruction: String
    var time: Int
    
    var recipe: RecipeDTO?
    
    init(
        id: UUID = UUID(),
        instruction: String,
        time: Int
    ) {
        self.id = id
        self.instruction = instruction
        self.time = time
    }
}
