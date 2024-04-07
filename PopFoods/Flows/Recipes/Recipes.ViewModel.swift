//
//  Dishes.ViewModel.swift
//  PopFoods
//
//  Created by Титов Кирилл Иванович on 24.01.2024.
//

import Foundation

extension Recipes {
	final class ViewModel: ObservableObject {
		let name: String = "Dishes"
		let tabBarImageName: String = "fork.knife"
        
        var recipes: [String?: [RecipeDTO]] = [
            Date().dayBefore.getDay: RecipesStubs().recipes.shuffled(),
            Date().getDay: RecipesStubs().recipes,
            Date().dayAfter.getDay: RecipesStubs().recipes.shuffled()
        ]
        
        var favoriteRecipes: [RecipeDTO] = [
            
        ]
	}
}
