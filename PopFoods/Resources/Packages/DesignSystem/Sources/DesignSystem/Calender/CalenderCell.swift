//
//  CalenderCell.swift
//  PopFoods
//
//  Created by Kirill Titov on 09.02.2024.
//

import SwiftUI


public struct CalenderCell: View {
    public struct Model: Identifiable {
        public var id: UUID = UUID()
        public let date: Date
    }
    
    public let data: Model
    @Binding var selectedDay: Date
    
    public var body: some View {
        LazyHStack {
            ZStack(alignment: .center) {
                VStack {
                    Text(data.date.getDay)
                        .font(.caption)
                        .padding(.top)
                    Text(data.date.getMonth)
                        .font(.caption)
                        .padding(.bottom)
                        .padding(.horizontal, 4)
                }
                .background(backgroundColor)
                .onTapGesture {
                    selectedDay = data.date
                }
            }
        }
    }
    
    private var backgroundColor: Color {
        selectedDay.getDay == data.date.getDay ? Color(UIColor(.black).withAlphaComponent(0.3)) : .clear
    }
}

#Preview {
    CalenderCell(
        data: CalenderCell.Model(date: Date()),
        selectedDay: .constant(Date())
    )
}
