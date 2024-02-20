//
//  Week.ViewModel.swift
//  PopFoods
//
//  Created by Титов Кирилл Иванович on 24.01.2024.
//

import Foundation
import SwiftUI
import StringExtenstions

extension Week {
	final class ViewModel: ObservableObject {
        
		let name: String = "Week"
		let tabBarImageName: String = "calendar"
        
        @Published var selectedDate = Date()
        
        var weeks: [Date] = Date().datesOfWeek(.currentAndNextOne)
        var recipes: [String?: [RecipeDTO]] = [
            Date().dayBefore.getDay: RecipesStubs().recipes.shuffled(),
            Date().getDay: RecipesStubs().recipes,
            Date().dayAfter.getDay: RecipesStubs().recipes.shuffled()
        ]
        
        lazy var weekPages: [[Date]] = weeks.splitIntoChunks(chunkSize: 7)
    }
}
