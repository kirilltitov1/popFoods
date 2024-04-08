//
//  RecipesStubs.swift
//  PopFoods
//
//  Created by Kirill Titov on 09.02.2024.
//

import Foundation
import SwiftData

struct RecipesStubs {

    var recipes: [RecipeDTO] = {
        // Создаем ингредиенты
        let chickenBreast = IngredientDTO(name: "Куриное филе", fat: 3.6, protein: 31.0, carbohydrates: 0.0, recipes: [])
        let carrot = IngredientDTO(name: "Морковь", fat: 0.2, protein: 0.9, carbohydrates: 9.6, recipes: [])
        let onion = IngredientDTO(name: "Лук", fat: 0.1, protein: 1.1, carbohydrates: 10.0, recipes: [])
        let buckwheat = IngredientDTO(name: "Гречка", fat: 3.4, protein: 13.3, carbohydrates: 71.5, recipes: [])
        let avocado = IngredientDTO(name: "Авокадо", fat: 15.0, protein: 2.0, carbohydrates: 9.0, recipes: [])
        let spinach = IngredientDTO(name: "Шпинат", fat: 0.4, protein: 2.9, carbohydrates: 3.6, recipes: [])
        let banana = IngredientDTO(name: "Банан", fat: 0.3, protein: 1.1, carbohydrates: 22.8, recipes: [])
        let milk = IngredientDTO(name: "Молоко", fat: 3.2, protein: 3.3, carbohydrates: 4.8, recipes: [])
        let honey = IngredientDTO(name: "Мед", fat: 0.0, protein: 0.3, carbohydrates: 82.4, recipes: [])
        let tuna = IngredientDTO(name: "Тунец", fat: 1.3, protein: 29.9, carbohydrates: 0.0, recipes: [])
        let boiledEgg = IngredientDTO(name: "Вареные яйца", fat: 10.6, protein: 12.6, carbohydrates: 1.1, recipes: [])
        let saladLeaves = IngredientDTO(name: "Салатные листья", fat: 0.1, protein: 1.2, carbohydrates: 2.9, recipes: [])
        let oliveOil = IngredientDTO(name: "Оливковое масло", fat: 100.0, protein: 0.0, carbohydrates: 0.0, recipes: [])
        let garlic = IngredientDTO(name: "Чеснок", fat: 0.5, protein: 6.0, carbohydrates: 33.0, recipes: [])
        let egg = IngredientDTO(name: "Яйцо", fat: 5.3, protein: 6.3, carbohydrates: 0.6, recipes: [])
        
        // Инструкции
        let fryChickenInstruction = InstructionDTO(instruction: "Поджарьте куриное филе до готовности, добавьте нарезанные морковь и лук.", time: 10)
        let cookBuckwheatInstruction = InstructionDTO(instruction: "Влейте воду, добавьте гречку и тушите до готовности.", time: 20)
        let mixSmoothieInstruction = InstructionDTO(instruction: "Все ингредиенты смешайте в блендере до однородной массы.", time: 5)
        let prepareSaladInstruction = InstructionDTO(instruction: "На салатные листья выложите тунца, нарезанные авокадо и яйца, заправьте оливковым маслом.", time: 15)
        let makeCutletsInstruction = InstructionDTO(instruction: "Измельчите куриное филе, шпинат, лук и чеснок, добавьте яйцо, соль и перец, сформируйте котлеты и обжарьте.", time: 30)
        
        // Создаем рецепты
        let buckwheatWithChickenRecipe = RecipeDTO(
            name: "Гречка с куриным филе и овощами",
            instructions: [fryChickenInstruction, cookBuckwheatInstruction],
            servingSize: "4 порции",
            preparationTime: "30 минут",
            description: "Питательное и сытное блюдо на каждый день.",
            imageUrl: "<здесь_ссылка_на_изображение>",
            ingredients: [chickenBreast, carrot, onion, buckwheat]
        )
        
        let smoothieRecipe = RecipeDTO(
            name: "Смузи с авокадо и шпинатом",
            instructions: [mixSmoothieInstruction],
            servingSize: "2 порции",
            preparationTime: "5 минут",
            description: "Освежающий и полезный смузи для энергичного начала дня.",
            imageUrl: "<здесь_ссылка_на_изображение>",
            ingredients: [avocado, spinach, banana, milk, honey]
        )
        
        let saladWithTunaRecipe = RecipeDTO(
            name: "Салат с тунцом, авокадо и яйцом",
            instructions: [prepareSaladInstruction],
            servingSize: "2 порции",
            preparationTime: "20 минут",
            description: "Легкий и полезный салат для обеда или ужина.",
            imageUrl: "<здесь_ссылка_на_изображение>",
            ingredients: [tuna, avocado, boiledEgg, saladLeaves, oliveOil]
        )
        
        let chickenCutletsWithSpinachRecipe = RecipeDTO(
            name: "Куриные котлеты со шпинатом",
            instructions: [makeCutletsInstruction],
            servingSize: "4 порции",
            preparationTime: "45 минут",
            description: "Нежные и сочные куриные котлеты с нотками шпината.",
            imageUrl: "<здесь_ссылка_на_изображение>",
            ingredients: [chickenBreast, spinach, onion, garlic, egg]
        )

        // Собираем массив всех рецептов
        let allRecipes = [buckwheatWithChickenRecipe, smoothieRecipe, saladWithTunaRecipe, chickenCutletsWithSpinachRecipe]
        
        return allRecipes
    }()
}
