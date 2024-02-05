//
//  Widgets.swift
//  PopFoods
//
//  Created by Kirill Titov on 30.01.2024.
//

import SwiftUI

struct HomeWidgetsModifire: ViewModifier {
    @Environment(\.horizontalSizeClass) private var sizeClass
    func body(content: Content) -> some View {
        content
            .containerRelativeFrame(
                [.horizontal],
                count: sizeClass == .compact ? 1 : 2,
                spacing: 16
            )
            .background(Color.blue)
            .clipShape(.rect(cornerRadius: 20.0))
    }
}

struct Widgets: View {
    
    @Environment(\.horizontalSizeClass) private var sizeClass

    var body: some View {
        VStack {
            widgets
            Spacer()
        }
    }
    
    private var widgets: some View {
        ScrollView(.horizontal) {
            LazyHStack(spacing: 8) {
                FPCChartWidget()
                    .modifier(HomeWidgetsModifire())
                FPCPieWidget()
                    .modifier(HomeWidgetsModifire())
            }
            .scrollTargetLayout()
        }
        .contentMargins(.horizontal, 16)
        .scrollTargetBehavior(.viewAligned)
        .scrollIndicators(.never)
    }
}

#Preview {
    let widgetsList: [Widgets] = [
        
    ]
    return Widgets()
}
