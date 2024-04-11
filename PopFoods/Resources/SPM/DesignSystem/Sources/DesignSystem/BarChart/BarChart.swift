
//  BarChart.swift
//  PopFoods
//
//  Created by Kirill Titov on 30.01.2024.


import SwiftUI
import Charts
import StringExtenstions

public struct BarChart: View {
    
    public struct Bar: Identifiable, Plottable {
        public let id: UUID = UUID()
        public let localizedString: String
        public let value: Double
        public let color: Color
        
        public init(
            localizedString: String,
            value: Double,
            color: Color
        ) {
            self.localizedString = localizedString
            self.value = value
            self.color = color
        }
        
        public init?(primitivePlottable: String) { nil }
        
        public var primitivePlottable: String {
            localizedString~
        }
    }
    
    private var bars: [Bar]
    
    public init(bars: [Bar]) {
        self.bars = bars
    }

    public var body: some View {
        ZStack {
            Chart {
                ForEach(bars) { bar in
                    BarMark(
                        x: .value(
                            bar.localizedString,
                            bar.localizedString
                        ),
                        y: .value(
                            String(bar.value),
                            bar.value
                        )
                    )
                    .foregroundStyle(bar.color)
                }
            }
            .aspectRatio(1, contentMode: .fit)
            .padding()
        }
    }
}

#Preview {
    BarChart(bars: [
        .init(localizedString: "bird", value: 1, color: .red),
        .init(localizedString: "dog", value: 3, color: .green),
        .init(localizedString: "cat", value: 2, color: .yellow)
    ])
}
