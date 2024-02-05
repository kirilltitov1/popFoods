//
//  Week.Screen.swift
//  PopFoods
//
//  Created by Титов Кирилл Иванович on 23.01.2024.
//

import SwiftUI
import Charts
import DesignSystem

extension Week {
	struct Screen: View {

		@ObservedObject var viewModel: ViewModel = ViewModel()
		
		var body: some View {
			NavigationStack {
                VStack {
                    Calender(
                        data: viewModel.weeks,
                        selectedDay: $viewModel.selectedDate
                    )
                    .aspectRatio(12.0 / 9.0, contentMode: .fit)
                    ScrollView(.vertical) {
                        LazyVStack {
                            ForEach(1..<10000) {
                                Text("\($0)")
                            }
                        }
                    }
                    Spacer()
                }
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
    Week.Screen()
}
