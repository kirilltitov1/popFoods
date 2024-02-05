//
//  Week.ViewModel.swift
//  PopFoods
//
//  Created by Титов Кирилл Иванович on 24.01.2024.
//

import Foundation
import SwiftUI

extension Week {
	final class ViewModel: ObservableObject {
        
		let name: String = "Week"
		let tabBarImageName: String = "calendar"
        
        @Published var selectedDate = Date()
        
        var weeks: [Date] = Date().datesOfWeek(.currentAndNextOne)
        
        lazy var weekPages: [[Date]] = weeks.splitIntoChunks(chunkSize: 7)
    }
}
