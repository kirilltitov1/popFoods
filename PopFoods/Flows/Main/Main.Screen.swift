//
//  Main.Screen.swift
//  PopFoods
//
//  Created by Титов Кирилл Иванович on 23.01.2024.
//

import SwiftUI

extension Main {
	struct Screen: View {

        @StateObject var viewModel: ViewModel = ViewModel()
        @EnvironmentObject var appvm: AppViewModel
        
        @State var selectedTab: Int = 0

		var body: some View {
			NavigationStack {
				tabs
			}.toolbar(.hidden)
		}

		private var tabs: some View {
            TabView(selection: $viewModel.selectedTab) {
				Home.Screen()
                    .tag(0)
				Week.Screen()
                    .tag(1)
                Recipes.Screen()
                    .tag(2)
				User.Screen()
                    .tag(3)
			}
            .edgesIgnoringSafeArea(.bottom)
		}
	}
}

#Preview {
    Main.Screen()
        .environmentObject(AppViewModel())
}
