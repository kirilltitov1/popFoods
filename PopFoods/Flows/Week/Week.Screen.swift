//
//  Week.Screen.swift
//  PopFoods
//
//  Created by Титов Кирилл Иванович on 23.01.2024.
//

import SwiftUI
import Charts
import DesignSystem

//List(viewModel.recipes[appvm.selectedDay.getDay] ?? [], id: \.id)

extension Week {
	struct Screen: View {

		@StateObject var viewModel: ViewModel = ViewModel()
        @EnvironmentObject var appvm: AppViewModel
        @State var selectedDate: Date = Date()
        @State var selectedRecipe: RecipeDTO?
		
		var body: some View {
			NavigationStack {
                VStack {
                    Calender(
                        data: viewModel.weeks,
                        selectedDay: $appvm.selectedDay
                    )
                    .aspectRatio(12.0 / 9.0, contentMode: .fit)
                    GeometryReader { geometry in
                        ScrollView(.vertical) {
                            LazyVStack {
                                List {
                                    ForEach(viewModel.recipes[appvm.selectedDay.getDay] ?? []) { data in
                                        RecipeCell(data: data)
                                            .onTapGesture {
                                                selectedRecipe = data
                                            }
                                    }
                                }
                                .frame(
                                    width: geometry.size.width + 20,
                                    height: geometry.size.height
                                )
                                .offset(y: -40)
                            }
                            .safeAreaPadding()
                        }
                        .edgesIgnoringSafeArea(.bottom)
                        Spacer()
                    }
                }
            }
            .sheet(item: $selectedRecipe) { recipe in
                ScreenRecipe(data: recipe)
            }
            .tabItem {
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
        .environmentObject(AppViewModel())
}
