//
//  Home.Screen.swift
//  PopFoods
//
//  Created by Титов Кирилл Иванович on 23.01.2024.
//

import SwiftUI
import DesignSystem

extension Home {
	struct Screen: View {

		@StateObject var viewModel: ViewModel = ViewModel()

		var body: some View {
			NavigationStack {
                VStack {
                    widgets
                    Spacer()
                }
			}.tabItem {
				TabItem(
                    title: viewModel.name,
                    imageName: viewModel.tabBarImageName
                )
			}
		}
        
        @ViewBuilder
        private var widgets: some View {
            Widgets()
                .aspectRatio(12.0 / 9.0, contentMode: .fit)
        }
	}
}

#Preview {
    Home.Screen()
        .environmentObject(AppViewModel())
        .modelContainer(appContainer)
}
