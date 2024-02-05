//
//  FPCChartWidget.swift
//  PopFoods
//
//  Created by Kirill Titov on 31.01.2024.
//

import SwiftUI
import DesignSystem

struct FPCChartWidget: View {
    
    @ObservedObject var viewModel: ViewModel = ViewModel()
    
    var body: some View {
        BarChart(bars: viewModel.bars)
    }
}

#Preview {
    FPCChartWidget()
}
