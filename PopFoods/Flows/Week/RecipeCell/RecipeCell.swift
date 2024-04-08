//
//  RecipeCell.swift
//  PopFoods
//
//  Created by Kirill Titov on 09.02.2024.
//

import SwiftUI
import StringExtenstions
import SwiftData

struct RecipeCell: View {
    
//    @Environment(\.modelContext) private var modelContext
    
    var data: RecipeDTO
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(data.name)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity)
                .clipped()
            Text(data.name)
                .bold()
                .padding(.leading)
                .padding(.top, 4)
            Text(data.descript)
                .font(.footnote)
                .padding(.leading)
                .padding(.top, 1)
                .opacity(0.7)
            Text("\(data.preparationTime)" + " min"~)
                .bold()
                .padding()
        }
        .clipShape(RoundedRectangle(cornerRadius: 10.0))
    }
}

#Preview {
    let preview = Preview(RecipeDTO.self)
    return RecipeCell(data: RecipeDTO.samples.first!)
        .modelContainer(preview.container)
}
