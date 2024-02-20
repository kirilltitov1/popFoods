//
//  RecipesStubs.swift
//  PopFoods
//
//  Created by Kirill Titov on 09.02.2024.
//

import Foundation

struct RecipesStubs {
    var recipes: [RecipeDTO] = [
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
        ),
        .init(
            name: "Смузи с авокадо и шпинатом",
            ingredients: [
                IngredientDTO(name: "Авокадо", fat: 15, protein: 2, carbohydrates: 9),
                IngredientDTO(name: "Шпинат", fat: 0, protein: 3, carbohydrates: 4),
                IngredientDTO(name: "Банан", fat: 0, protein: 1, carbohydrates: 23),
                IngredientDTO(name: "Молоко", fat: 3, protein: 3, carbohydrates: 5),
                IngredientDTO(name: "Мед", fat: 0, protein: 0, carbohydrates: 82)
            ],
            instructions: "Все ингредиенты смешайте в блендере до однородной массы.",
            servingSize: "2 порции",
            preparationTime: "10 минут",
            description: "Освежающий и полезный смузи для энергичного начала дня.",
            imageUrl: "<здесь_ссылка_на_изображение>",
            time: "44"
        ),
        .init(
            name: "Овсянка с яблоками и грецкими орехами",
            ingredients: [
                IngredientDTO(name: "Овсяные хлопья", fat: 7, protein: 17, carbohydrates: 66),
                IngredientDTO(name: "Яблоки", fat: 0, protein: 0, carbohydrates: 14),
                IngredientDTO(name: "Грецкие орехи", fat: 65, protein: 15, carbohydrates: 14),
                IngredientDTO(name: "Мед", fat: 0, protein: 0, carbohydrates: 82),
                IngredientDTO(name: "Молоко", fat: 3, protein: 3, carbohydrates: 5)
            ],
            instructions: "Варите овсяные хлопья на молоке, добавьте нарезанные яблоки и орехи, подсластите медом.",
            servingSize: "2 порции",
            preparationTime: "15 минут",
            description: "Питательный завтрак для заряда энергии на весь день.",
            imageUrl: "<здесь_ссылка_на_изображение>",
            time: "11"
        ),
        .init(
            name: "Салат с тунцом, авокадо и яйцом",
            ingredients: [
                IngredientDTO(name: "Тунец", fat: 1, protein: 30, carbohydrates: 0),
                IngredientDTO(name: "Авокадо", fat: 15, protein: 2, carbohydrates: 9),
                IngredientDTO(name: "Вареные яйца", fat: 11, protein: 13, carbohydrates: 1),
                IngredientDTO(name: "Салатные листья", fat: 0, protein: 1, carbohydrates: 3),
                IngredientDTO(name: "Оливковое масло", fat: 100, protein: 0, carbohydrates: 0)
            ],
            instructions: "На салатные листья выложите тунца, нарезанные авокадо и яйца, заправьте оливковым маслом.",
            servingSize: "2 порции",
            preparationTime: "20 минут",
            description: "Легкий и полезный салат для обеда или ужина.",
            imageUrl: "<здесь_ссылка_на_изображение>",
            time: "120"
        )
    ]
}
