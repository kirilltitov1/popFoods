//
//  User.Screen.swift
//  PopFoods
//
//  Created by Kirill Titov on 31.01.2024.
//

import SwiftUI
import DesignSystem

extension User {
    struct Screen: View {
        
        @ObservedObject var viewModel: ViewModel = ViewModel()
        
        var body: some View {
            NavigationStack {
                Text("Hello, World!")
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
    User.Screen()
}
