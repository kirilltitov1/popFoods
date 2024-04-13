//
//  Dishes.ViewModel.swift
//  PopFoods
//
//  Created by Титов Кирилл Иванович on 24.01.2024.
//

import Foundation
import SwiftData
import StringExtenstions

extension Recipes {
    @MainActor
	final class ViewModel: ObservableObject {
		let name: String = "Dishes"
		let tabBarImageName: String = "fork.knife"
        
        var weeks: [Date] = Date().datesOfWeek(.currentAndNextOne)
        
        @Published var searchText = ""
        @Published var pickerOptions: [String] = ["Завтрак", "Обед", "Ужин"]
        @Published var selectedOption: String = ""
        @Published var isEditing = false
        
        lazy var recipes: [RecipeDTO] = {
            var recipes: [RecipeDTO] = []
            do {
                let container = try ModelContainer(for: RecipeDTO.self)
                let descriptor = FetchDescriptor<RecipeDTO>()
                recipes = try container.mainContext.fetch(descriptor)
            } catch let err {
                print(err)
            }
            return recipes
        }()
        
        var favoriteRecipes: [RecipeDTO] = []
	}
}
