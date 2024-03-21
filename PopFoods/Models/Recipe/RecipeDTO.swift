//
//  RecipeDTO.swift
//  PopFoods
//
//  Created by Kirill Titov on 01.02.2024.
//

import Foundation

struct RecipeDTO: Codable, Identifiable {
    var id: UUID = UUID()

    let name: String
    let instructions: [InstructionDTO]
    let servingSize: String
    let preparationTime: String
    let description: String
    let imageUrl: String
    
    var time: Double {
        Double(instructions.reduce(0, { $1.time }))
    }
    
    var calories: Double {
        instructions.reduce(0, { $1.ingredients.reduce(0, { $0 + $1.carbohydrates }) })
    }
    
    var proteins: Double {
        instructions.reduce(0, { $1.ingredients.reduce(0, { $0 + $1.protein }) })
    }
    
    var fats: Double {
        instructions.reduce(0, { $1.ingredients.reduce(0, { $0 + $1.fat }) })
    }
    
    var carbohydrates: Double {
        instructions.reduce(0, { $1.ingredients.reduce(0, { $0 + $1.carbohydrates }) })
    }
}
