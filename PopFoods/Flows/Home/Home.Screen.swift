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

		@ObservedObject var viewModel: ViewModel = ViewModel()

		var body: some View {
			NavigationStack {

			}.tabItem {
				TabItem(title: viewModel.name, imageName: viewModel.tabBarImageName)
			}
		}
	}
}

struct HomeScreenPreviews: PreviewProvider {
    static var previews: some View {
		Home.Screen()
    }
}
