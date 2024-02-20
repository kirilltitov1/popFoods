//
//  ScreenRecipe.swift
//  PopFoods
//
//  Created by Kirill Titov on 21.02.2024.
//

import SwiftUI
import StringExtenstions

struct ScreenRecipe: View {

    let data: RecipeDTO
    
    var body: some View {
        VStack {
            
            Image(data.name)
                .resizable()
                .scaledToFit()
            
            description
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 25))
                .frame(maxWidth: .infinity)
                .offset(y: -50)
            
            Spacer()
        }
    }
    
    private var description: some View {
            VStack(alignment: .center) {
                Text(data.name)
                    .padding(.horizontal)
                    .padding(.top)
                    .bold()
                    .offset()
                Text(data.description)
                    .font(.footnote)
                    .padding(.horizontal)
                    .padding(.top, 1)
                    .opacity(0.7)
                Text(data.time + "min"~)
                    .bold()
                    .padding()
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
    }
}

#Preview {
    ScreenRecipe(data:
            .init(
                name: "Гречка с куриным филе и овощами",
                ingredients: [
                    IngredientDTO(name: "Гречка", fat: 3, protein: 13, carbohydrates: 72),
                    IngredientDTO(name: "Куриное филе", fat: 3, protein: 31, carbohydrates: 0),
                    IngredientDTO(name: "Морковь", fat: 0, protein: 1, carbohydrates: 10),
                    IngredientDTO(name: "Лук", fat: 0, protein: 1, carbohydrates: 10),
                    IngredientDTO(name: "Оливковое масло", fat: 100, protein: 0, carbohydrates: 0)
                ],
                instructions: "Поджарьте куриное филе до готовности, добавьте нарезанные морковь и лук. Влейте воду, добавьте гречку и тушите до готовности.",
                servingSize: "4 порции",
                preparationTime: "40 минут",
                description: "Питательное и сытное блюдо на каждый день.",
                imageUrl: "<здесь_ссылка_на_изображение>",
                time: "26"
            )
    )
}
