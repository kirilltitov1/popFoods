//
//  FPCPieWidget.swift
//  PopFoods
//
//  Created by Kirill Titov on 01.02.2024.
//

import SwiftUI
import DesignSystem

struct FPCPieWidget: View {
    
    @ObservedObject var viewModel: ViewModel = ViewModel()
    
    var body: some View {
        PieChart(data: viewModel.data)
    }
}

#Preview {
    FPCPieWidget()
}
