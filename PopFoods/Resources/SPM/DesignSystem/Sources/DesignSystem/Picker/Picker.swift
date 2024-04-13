//
//  Picker.swift
//
//
//  Created by Kirill Titov on 13.04.2024.
//

import SwiftUI

public struct RoundedPickerView: View {
    @Binding var selectedValue: String
    var options: [String]
    
    public init(
        selectedValue: Binding<String>,
        options: [String]
    ) {
        self._selectedValue = selectedValue
        self.options = options
    }
    
    public var body: some View {
        HStack(spacing: 0) {
            ForEach(options, id: \.self) { option in
                ZStack {
                    // Фон кнопки
                    if self.selectedValue == option {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.blue)
                    } else {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.clear)
                            .background(
                                RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 2)
                            )
                    }
                    // Текст кнопки
                    Button(action: {
                        self.selectedValue = option
                    }) {
                        Text(option)
                            .foregroundColor(self.selectedValue == option ? .white : .blue)
                    }
                }
            }
        }
        .cornerRadius(10)
    }
}

#Preview {
    // Имитация ViewModel с тестовыми данными для превью
    let testData = ["Опция 1", "Опция 2", "Опция 3"]
    @State var selectedPreviewValue = "Опция 1"
    
    return RoundedPickerView(
        selectedValue: $selectedPreviewValue,
        options: testData
    )
    .previewLayout(.sizeThatFits)
    .padding()
}
