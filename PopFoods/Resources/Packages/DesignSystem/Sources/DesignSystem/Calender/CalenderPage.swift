//
//  CalenderPage.swift
//  PopFoods
//
//  Created by Kirill Titov on 09.02.2024.
//

import SwiftUI

public struct CalenderPage: View {
    
    public struct Model: Identifiable {
        public let id: UUID = UUID()
        public let page: [CalenderCell.Model]
        
        public init(dates: [Date]) {
            self.page = dates.map { CalenderCell.Model(date: $0) }
        }
    }
    
    public var data: Model
    @Binding var selectedDay: Date
    
    public init(
        data: Model,
        selectedDay: Binding<Date>
    ) {
        self.data = data
        self._selectedDay = selectedDay
    }
    
    public var body: some View {
        LazyHStack(spacing: 8) {
            ForEach(data.page) {
                CalenderCell(data: $0, selectedDay: $selectedDay)
                    .cornerRadius(10.0)
                    .background(.green)
            }
        }.background(.brown)
    }
}

#Preview {
    CalenderPage(
        data: CalenderPage.Model(
            dates: Date().datesOfWeek()
        ),
        selectedDay: .constant(Date())
    )
}
