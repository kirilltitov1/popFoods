//
//  AppViewModel.swift
//  PopFoods
//
//  Created by Kirill Titov on 06.02.2024.
//

import Foundation

final class AppViewModel: ObservableObject {
    @Published var userSettings = UserSettings()
    @Published var selectedDay: Date = Date()
    @Published var selectedTab: Int = 0
}
