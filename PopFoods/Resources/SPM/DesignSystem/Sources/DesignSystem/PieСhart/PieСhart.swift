//
//  PieСhart.swift
//
//
//  Created by Kirill Titov on 31.01.2024.
//

import Foundation
import SwiftUI
import Charts

public struct PieChart: View {

    public struct Sector: Identifiable {
        public let id = UUID()
        public let localizedString: String
        public let amount: Double
        public let color: Color
        
        public init(
            localizedString: String,
            amount: Double,
            color: Color
        ) {
            self.localizedString = localizedString
            self.amount = amount
            self.color = color
        }
    }
    
    private var data: [Sector]
    
    public init(data: [Sector]) {
        self.data = data
    }
    
    public var body: some View {
        VStack {
            Chart(data) { sector in
                SectorMark(
                    angle: .value(
                        "Amount",
                        sector.amount
                    ),
                    innerRadius: .ratio(0.5),
                    angularInset: 2
                )
                .foregroundStyle(sector.color)
                .cornerRadius(10)
            }
            .aspectRatio(1, contentMode: .fit)
            .padding()
            
            HStack {
                ForEach(data) { sector in
                    Circle()
                        .foregroundStyle(sector.color)
                        .frame(width: 16, height: 16)
                    Text(sector.localizedString)
                }
            }
        }
    }
}


#Preview {
    let data: [PieChart.Sector] = [
        .init(localizedString: "Жиры", amount: 300, color: .red),
        .init(localizedString: "Белки", amount: 400, color: .green),
        .init(localizedString: "Углеводы", amount: 800, color: .yellow)
    ]
    return PieChart(data: data)
}
