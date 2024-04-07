//
//  RecipeFilterScreen.swift
//  PopFoods
//
//  Created by Kirill Titov on 26.03.2024.
//

import Foundation
import SwiftUI
import UIKit

extension RecipeFilter {
    struct FilterView: View {
        @ObservedObject var viewModel: ViewModel = ViewModel()
        // Предполагаем, что эти данные получены из сетевого запроса
        let filterCategories: [String: [String]] = [
            "Диета": ["Вегетарианская", "Веганская", "Без глютена"],
            "Кухня": ["Американская", "Итальянская", "Японская"]
        ]
        
        // Словарь для отслеживания выбранных фильтров
        @State private var selectedFilters: [String: Bool] = [:]
        
        var body: some View {
            NavigationView {
                List {
                    ForEach(filterCategories.keys.sorted(), id: \.self) { category in
                        Section(header: Text(category)) {
                            ForEach(filterCategories[category] ?? [], id: \.self) { filter in
                                Toggle(isOn: Binding(
                                    get: { self.selectedFilters[filter] ?? false },
                                    set: { self.selectedFilters[filter] = $0 }
                                )) {
                                    Text(filter)
                                }
                            }
                        }
                    }
                }
                .navigationBarTitle("Настройки фильтров")
                .listStyle(GroupedListStyle())
            }
        }
    }
}

private extension RecipeFilter.FilterView {
//    var
}

#Preview {
    RecipeFilter.FilterView()

}
