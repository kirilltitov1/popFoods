//
//  RecipesStubs.swift
//  PopFoods
//
//  Created by Kirill Titov on 09.02.2024.
//

import Foundation

struct RecipesStubs {
    var recipes: [RecipeDTO] = [
        RecipeDTO(
            name: "Гречка с куриным филе и овощами",
            instructions: [
                InstructionDTO(
                    instruction: "Поджарьте куриное филе до готовности, добавьте нарезанные морковь и лук.",
                    time: 10,
                    ingredients: [
                        IngredientDTO(name: "Куриное филе", fat: 3.6, protein: 31.0, carbohydrates: 0.0),
                        IngredientDTO(name: "Морковь", fat: 0.2, protein: 0.9, carbohydrates: 9.6),
                        IngredientDTO(name: "Лук", fat: 0.1, protein: 1.1, carbohydrates: 10.0)
                    ]
                ),
                InstructionDTO(
                    instruction: "Влейте воду, добавьте гречку и тушите до готовности.",
                    time: 20,
                    ingredients: [
                        IngredientDTO(name: "Гречка", fat: 3.4, protein: 13.3, carbohydrates: 71.5)
                    ]
                )
            ],
            servingSize: "4 порции",
            preparationTime: "30 минут",
            description: "Питательное и сытное блюдо на каждый день.",
            imageUrl: "<здесь_ссылка_на_изображение>"
        ),
        RecipeDTO(
            name: "Смузи с авокадо и шпинатом",
            instructions: [
                InstructionDTO(
                    instruction: "Все ингредиенты смешайте в блендере до однородной массы.",
                    time: 5,
                    ingredients: [
                        IngredientDTO(name: "Авокадо", fat: 15.0, protein: 2.0, carbohydrates: 9.0),
                        IngredientDTO(name: "Шпинат", fat: 0.4, protein: 2.9, carbohydrates: 3.6),
                        IngredientDTO(name: "Банан", fat: 0.3, protein: 1.1, carbohydrates: 22.8),
                        IngredientDTO(name: "Молоко", fat: 3.2, protein: 3.3, carbohydrates: 4.8),
                        IngredientDTO(name: "Мед", fat: 0.0, protein: 0.3, carbohydrates: 82.4)
                    ]
                )
            ],
            servingSize: "2 порции",
            preparationTime: "5 минут",
            description: "Освежающий и полезный смузи для энергичного начала дня.",
            imageUrl: "<здесь_ссылка_на_изображение>"
        ),
        RecipeDTO(
            name: "Салат с тунцом, авокадо и яйцом",
            instructions: [
                InstructionDTO(
                    instruction: "На салатные листья выложите тунца, нарезанные авокадо и яйца, заправьте оливковым маслом.",
                    time: 15,
                    ingredients: [
                        IngredientDTO(name: "Тунец", fat: 1.3, protein: 29.9, carbohydrates: 0.0),
                        IngredientDTO(name: "Авокадо", fat: 15.0, protein: 2.0, carbohydrates: 9.0),
                        IngredientDTO(name: "Вареные яйца", fat: 10.6, protein: 12.6, carbohydrates: 1.1),
                        IngredientDTO(name: "Салатные листья", fat: 0.1, protein: 1.2, carbohydrates: 2.9),
                        IngredientDTO(name: "Оливковое масло", fat: 100.0, protein: 0.0, carbohydrates: 0.0)
                    ]
                )
            ],
            servingSize: "2 порции",
            preparationTime: "20 минут",
            description: "Легкий и полезный салат для обеда или ужина.",
            imageUrl: "<здесь_ссылка_на_изображение>"
        ),
        RecipeDTO(
            name: "Куриные котлеты со шпинатом",
            instructions: [
                InstructionDTO(
                    instruction: "Измельчите куриное филе, шпинат, лук и чеснок, добавьте яйцо, соль и перец, сформируйте котлеты и обжарьте.",
                    time: 30,
                    ingredients: [
                        IngredientDTO(name: "Куриное филе", fat: 3.6, protein: 31.0, carbohydrates: 0.0),
                        IngredientDTO(name: "Шпинат", fat: 0.4, protein: 2.9, carbohydrates: 3.6),
                        IngredientDTO(name: "Лук", fat: 0.1, protein: 1.1, carbohydrates: 10.0),
                        IngredientDTO(name: "Чеснок", fat: 0.5, protein: 6.0, carbohydrates: 33.0),
                        IngredientDTO(name: "Яйцо", fat: 5.3, protein: 6.3, carbohydrates: 0.6)
                    ]
                )
            ],
            servingSize: "4 порции",
            preparationTime: "45 минут",
            description: "Нежные и сочные куриные котлеты с нотками шпината.",
            imageUrl: "<здесь_ссылка_на_изображение>"
        ),
        ]
}
