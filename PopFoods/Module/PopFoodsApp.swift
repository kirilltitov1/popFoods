//
//  PopFoodsApp.swift
//  PopFoods
//
//  Created by Титов Кирилл Иванович on 17.01.2024.
//

import SwiftUI

@main
struct PopFoodsApp: App {
    @ObservedObject var appViewModel = AppViewModel()

    var body: some Scene {
        WindowGroup {
			Main.Screen()
                .environmentObject(appViewModel)
                .modelContainer(for: RecipeDTO.self)
                .modelContainer(for: IngredientDTO.self)
                .modelContainer(for: InstructionDTO.self)
        }
    }
}
