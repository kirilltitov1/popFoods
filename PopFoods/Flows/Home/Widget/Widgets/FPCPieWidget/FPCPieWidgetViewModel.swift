//
//  FPCPieWidgetViewModel.swift
//  PopFoods
//
//  Created by Kirill Titov on 01.02.2024.
//

import Foundation
import DesignSystem

extension FPCPieWidget {
    final class ViewModel: ObservableObject {
        @Published var data: [PieChart.Sector] = [
            .init(localizedString: "Жиры", amount: 300, color: .red),
            .init(localizedString: "Белки", amount: 400, color: .green),
            .init(localizedString: "Углеводы", amount: 800, color: .yellow)
        ]
    }
}
