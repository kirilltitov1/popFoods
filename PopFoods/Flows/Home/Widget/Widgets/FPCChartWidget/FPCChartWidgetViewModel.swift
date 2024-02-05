//
//  FPCChartWidgetViewModel.swift
//  PopFoods
//
//  Created by Kirill Titov on 31.01.2024.
//

import Foundation
import DesignSystem

extension FPCChartWidget {
    final class ViewModel: ObservableObject {
        @Published var bars: [BarChart.Bar] = [
            .init(localizedString: "bird", value: 1, color: .red),
            .init(localizedString: "dog", value: 3, color: .green),
            .init(localizedString: "cat", value: 2, color: .yellow)
        ]
    }
}
