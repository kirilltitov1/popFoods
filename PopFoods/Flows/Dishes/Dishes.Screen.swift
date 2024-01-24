//
//  Dishes.Screen.swift
//  PopFoods
//
//  Created by Титов Кирилл Иванович on 24.01.2024.
//

import SwiftUI
import DesignSystem

extension Dishes {
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

struct Dishes_Screen_Previews: PreviewProvider {
    static var previews: some View {
		Dishes.Screen()
    }
}
