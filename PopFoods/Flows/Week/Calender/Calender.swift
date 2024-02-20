//
//  CalenderCell.swift
//  PopFoods
//
//  Created by Kirill Titov on 09.02.2024.
//

import SwiftUI
import DesignSystem

struct CalenderPageModifire: ViewModifier {
    @Environment(\.horizontalSizeClass) private var sizeClass
    func body(content: Content) -> some View {
        content
            .containerRelativeFrame(
                [.horizontal],
                count: sizeClass == .compact ? 1 : 2,
                spacing: 14
            )
            .background(Color.blue)
            .clipShape(.rect(cornerRadius: 10.0))
    }
}

struct Calender: View {
    
    var data: [Date]
    @Binding var selectedDay: Date
    
    private var pages: [CalenderPage.Model] {
        data.splitIntoChunks(chunkSize: 7).map { CalenderPage.Model(dates: $0) }
    }
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyVStack {
                LazyHStack(spacing: 8) {
                    ForEach(pages) { page in
                        CalenderPage(data: page, selectedDay: $selectedDay)
                            .modifier(CalenderPageModifire())
                    }
                }
                .scrollTargetLayout()
            }
        }
        .contentMargins(.horizontal, 8)
        .scrollTargetBehavior(.viewAligned)
        .scrollIndicators(.never)
        .background(.clear)
    }
}

#Preview {
    Calender(
        data: Date().datesOfWeek(.currentAndNextOne), 
        selectedDay: .constant(Date())
    )
}
