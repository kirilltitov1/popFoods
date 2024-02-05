//
//  Main.Screen.swift
//  PopFoods
//
//  Created by Титов Кирилл Иванович on 23.01.2024.
//

import SwiftUI

extension Main {
	struct Screen: View {

        @ObservedObject var viewModel: ViewModel = ViewModel()

		var body: some View {
			NavigationStack {
				tabs
			}.toolbar(.hidden)
		}

		private var tabs: some View {
            TabView(selection: $viewModel.selectedTab) {
				Home.Screen()
				Week.Screen()
                Recipes.Screen()
				User.Screen()
			}
		}
	}
}

#Preview {
    Main.Screen()
}
