//
//  AppContainer.swift
//  PopFoods
//
//  Created by Kirill Titov on 07.04.2024.
//

import Foundation
import SwiftData

@MainActor
let appContainer: ModelContainer = {
    do {
        let container = try ModelContainer(for: RecipeDTO.self, IngredientDTO.self)
        
        // Make sure the persistent store is empty. If it's not, return the non-empty container.
        var itemFetchDescriptor = FetchDescriptor<RecipeDTO>()
        itemFetchDescriptor.fetchLimit = 1
        
        let url = container.configurations.first?.url.path(percentEncoded: false)
        print(url ?? URL(string: "") as Any)
        guard try container.mainContext.fetch(itemFetchDescriptor).count == 0 else { return container }
        
        // This code will only run if the persistent store is empty.
        let items = RecipesStubs().recipes
        
        for item in items {
            container.mainContext.insert(item)
        }
        
        return container
    } catch {
        fatalError("Failed to create container")
    }
}()
