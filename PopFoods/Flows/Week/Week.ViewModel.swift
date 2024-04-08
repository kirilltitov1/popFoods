//
//  Week.ViewModel.swift
//  PopFoods
//
//  Created by Титов Кирилл Иванович on 24.01.2024.
//

import Foundation
import SwiftUI
import StringExtenstions
import SwiftData

extension Week {
    @MainActor
	final class ViewModel: ObservableObject {
        @Environment(\.modelContext) private var modelContext
        
        let name: String = "Week"
        let tabBarImageName: String = "calendar"
        
        @Published var selectedDate = Date()
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
        
        var weeks: [Date] = Date().datesOfWeek(.currentAndNextOne)
        lazy var recipesPerDate: [String?: [RecipeDTO]] = [
            Date().dayBefore.getDay: recipes.shuffled(),
            Date().getDay: recipes,
            Date().dayAfter.getDay: recipes.shuffled()
        ]
        
        lazy var weekPages: [[Date]] = weeks.splitIntoChunks(chunkSize: 7)
    }
}
