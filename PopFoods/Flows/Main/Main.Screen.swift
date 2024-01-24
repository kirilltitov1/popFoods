//
//  Main.Screen.swift
//  PopFoods
//
//  Created by Титов Кирилл Иванович on 23.01.2024.
//

import SwiftUI

extension Main {
	struct Screen: View {

		@State private var selectedTab: Int = 0

		var body: some View {
			NavigationStack {
				tabs
			}.toolbar(.hidden)
		}

		private var tabs: some View {
			TabView(selection: $selectedTab) {
				Home.Screen()
				Week.Screen()
				Dishes.Screen()
				Basket.Screen()
			}
		}
	}
}
struct MainScreenPreviews: PreviewProvider {
    static var previews: some View {
		Main.Screen()
    }
}
