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
        @EnvironmentObject var appvm: AppViewModel
        
        var body: some View {
            NavigationStack {
                GeometryReader { geometry in
                    ScrollView(.vertical) {
                        LazyVStack {
                            List {
                                ForEach(viewModel.recipes[appvm.selectedDay.getDay] ?? []) { data in
                                    RecipeCell(data: data)
                                        .onTapGesture {
//                                            selectedRecipe = data
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
            }.tabItem {
                TabItem(
                    title: viewModel.name,
                    imageName: viewModel.tabBarImageName
                )
            }
        }
    }
}

private extension Recipes.Screen {
//    var 
}

#Preview {
    Recipes.Screen()
        .environmentObject(AppViewModel())
}
