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
                    if self.selectedValue == option {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.blue)
                    } else {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.clear)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.blue, lineWidth: 2)
                            )
                    }
                    Button(action: {
                        if selectedValue == option {
                            selectedValue = ""
                        } else {
                            self.selectedValue = option
                        }
                    }) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(selectedValue == option ? Color.blue : Color.clear)
                            Text(option)
                                .foregroundColor(selectedValue == option ? .white : .blue)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    // Имитация ViewModel с тестовыми данными для превью
    let testData = ["Опция 1", "Опция 2", "Опция 3"]
//    @State var selectedPreviewValue = "Опция 1"
    
    return RoundedPickerView(
        selectedValue: .constant("Опция 1"),
        options: testData
    )
    .previewLayout(.sizeThatFits)
    .padding()
}
