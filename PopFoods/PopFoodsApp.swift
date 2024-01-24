//
//  PopFoodsApp.swift
//  PopFoods
//
//  Created by Титов Кирилл Иванович on 17.01.2024.
//

import SwiftUI

@main
struct PopFoodsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
			Main.Screen()
        }
    }
}
