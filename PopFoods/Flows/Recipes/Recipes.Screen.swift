//
//  Dishes.Screen.swift
//  PopFoods
//
//  Created by Титов Кирилл Иванович on 24.01.2024.
//

import SwiftUI
import DesignSystem

extension Recipes {
    struct Screen: View {
        
        @StateObject var viewModel: ViewModel = ViewModel()
        
        var body: some View {
            NavigationStack {
                
            }.tabItem {
                TabItem(
                    title: viewModel.name,
                    imageName: viewModel.tabBarImageName
                )
            }
        }
    }
}

#Preview {
    Recipes.Screen()
}
