//
//  PopFoodsApp.swift
//  PopFoods
//
//  Created by Титов Кирилл Иванович on 17.01.2024.
//

import SwiftUI
import SwiftData

@main
struct PopFoodsApp: App {
    @ObservedObject var appViewModel = AppViewModel()
    @Environment(\.modelContext) private var modelContext

    var body: some Scene {
        WindowGroup {
			Main.Screen()
        }
        .environmentObject(appViewModel)
        .modelContainer(for: RecipeDTO.self)
        .modelContainer(for: IngredientDTO.self)
        .modelContainer(appContainer)
    }
}
