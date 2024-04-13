//
//  RecipesStubs.swift
//  PopFoods
//
//  Created by Kirill Titov on 09.02.2024.
//

import Foundation
import SwiftData

struct RecipesStubs {

    func recipes1(context: ModelContext) -> [RecipeDTO] {
        
        // Создаем ингредиенты
        let chickenBreast = IngredientDTO(name: "Куриное филе", fat: 3.6, protein: 31.0, carbohydrates: 0.0)
        let carrot = IngredientDTO(name: "Морковь", fat: 0.2, protein: 0.9, carbohydrates: 9.6)
        let onion = IngredientDTO(name: "Лук", fat: 0.1, protein: 1.1, carbohydrates: 10.0)
        let buckwheat = IngredientDTO(name: "Гречка", fat: 3.4, protein: 13.3, carbohydrates: 71.5)
        let avocado = IngredientDTO(name: "Авокадо", fat: 15.0, protein: 2.0, carbohydrates: 9.0)
        let spinach = IngredientDTO(name: "Шпинат", fat: 0.4, protein: 2.9, carbohydrates: 3.6)
        let banana = IngredientDTO(name: "Банан", fat: 0.3, protein: 1.1, carbohydrates: 22.8)
        let milk = IngredientDTO(name: "Молоко", fat: 3.2, protein: 3.3, carbohydrates: 4.8)
        let honey = IngredientDTO(name: "Мед", fat: 0.0, protein: 0.3, carbohydrates: 82.4)
        let tuna = IngredientDTO(name: "Тунец", fat: 1.3, protein: 29.9, carbohydrates: 0.0)
        let boiledEgg = IngredientDTO(name: "Вареные яйца", fat: 10.6, protein: 12.6, carbohydrates: 1.1)
        let saladLeaves = IngredientDTO(name: "Салатные листья", fat: 0.1, protein: 1.2, carbohydrates: 2.9)
        let oliveOil = IngredientDTO(name: "Оливковое масло", fat: 100.0, protein: 0.0, carbohydrates: 0.0)
        let garlic = IngredientDTO(name: "Чеснок", fat: 0.5, protein: 6.0, carbohydrates: 33.0)
        let egg = IngredientDTO(name: "Яйцо", fat: 5.3, protein: 6.3, carbohydrates: 0.6)
        
        // Создаем рецепты
        let buckwheatWithChickenRecipe = RecipeDTO(
            name: "Гречка с куриным филе и овощами",
            servingSize: "4 порции",
            preparationTime: "30 минут",
            description: "Питательное и сытное блюдо на каждый день.",
            imageUrl: "<здесь_ссылка_на_изображение>",
            instructions: "Поджарьте куриное филе до готовности, добавьте нарезанные морковь и лук.\nВлейте воду, добавьте гречку и тушите до готовности."
        )
        
        let smoothieRecipe = RecipeDTO(
            name: "Смузи с авокадо и шпинатом",
            servingSize: "2 порции",
            preparationTime: "5 минут",
            description: "Освежающий и полезный смузи для энергичного начала дня.",
            imageUrl: "<здесь_ссылка_на_изображение>",
            instructions: "Все ингредиенты смешайте в блендере до однородной массы."
        )
        
        let saladWithTunaRecipe = RecipeDTO(
            name: "Салат с тунцом, авокадо и яйцом",
            servingSize: "2 порции",
            preparationTime: "20 минут",
            description: "Легкий и полезный салат для обеда или ужина.",
            imageUrl: "<здесь_ссылка_на_изображение>",
            instructions: "На салатные листья выложите тунца, нарезанные авокадо и яйца, заправьте оливковым маслом."
        )
        
        let chickenCutletsWithSpinachRecipe = RecipeDTO(
            name: "Куриные котлеты со шпинатом",
            servingSize: "4 порции",
            preparationTime: "45 минут",
            description: "Нежные и сочные куриные котлеты с нотками шпината.",
            imageUrl: "<здесь_ссылка_на_изображение>",
            instructions: "Измельчите куриное филе, шпинат, лук и чеснок, добавьте яйцо, соль и перец, сформируйте котлеты и обжарьте."
        )
        
        
        [buckwheatWithChickenRecipe, smoothieRecipe, saladWithTunaRecipe, chickenCutletsWithSpinachRecipe].forEach {
            context.insert($0)
        }
        
        [chickenBreast, carrot, onion, buckwheat].forEach {
            buckwheatWithChickenRecipe.ingredients.append($0)
        }
        
        [avocado, spinach, banana, milk, honey].forEach {
            smoothieRecipe.ingredients.append($0)
        }
        
        [tuna, avocado, boiledEgg, saladLeaves, oliveOil].forEach {
            saladWithTunaRecipe.ingredients.append($0)
        }
        
        [chickenBreast, spinach, onion, garlic, egg].forEach {
            chickenCutletsWithSpinachRecipe.ingredients.append($0)
        }

        // Собираем массив всех рецептов
        let allRecipes = [buckwheatWithChickenRecipe, smoothieRecipe, saladWithTunaRecipe, chickenCutletsWithSpinachRecipe]
        
        return allRecipes
    }
    
//    var recipes: [RecipeDTO] = {
//        
//        // Создаем ингредиенты
//        let chickenBreast = IngredientDTO(name: "Куриное филе", fat: 3.6, protein: 31.0, carbohydrates: 0.0)
//        let carrot = IngredientDTO(name: "Морковь", fat: 0.2, protein: 0.9, carbohydrates: 9.6)
//        let onion = IngredientDTO(name: "Лук", fat: 0.1, protein: 1.1, carbohydrates: 10.0)
//        let buckwheat = IngredientDTO(name: "Гречка", fat: 3.4, protein: 13.3, carbohydrates: 71.5)
//        let avocado = IngredientDTO(name: "Авокадо", fat: 15.0, protein: 2.0, carbohydrates: 9.0)
//        let spinach = IngredientDTO(name: "Шпинат", fat: 0.4, protein: 2.9, carbohydrates: 3.6)
//        let banana = IngredientDTO(name: "Банан", fat: 0.3, protein: 1.1, carbohydrates: 22.8)
//        let milk = IngredientDTO(name: "Молоко", fat: 3.2, protein: 3.3, carbohydrates: 4.8)
//        let honey = IngredientDTO(name: "Мед", fat: 0.0, protein: 0.3, carbohydrates: 82.4)
//        let tuna = IngredientDTO(name: "Тунец", fat: 1.3, protein: 29.9, carbohydrates: 0.0)
//        let boiledEgg = IngredientDTO(name: "Вареные яйца", fat: 10.6, protein: 12.6, carbohydrates: 1.1)
//        let saladLeaves = IngredientDTO(name: "Салатные листья", fat: 0.1, protein: 1.2, carbohydrates: 2.9)
//        let oliveOil = IngredientDTO(name: "Оливковое масло", fat: 100.0, protein: 0.0, carbohydrates: 0.0)
//        let garlic = IngredientDTO(name: "Чеснок", fat: 0.5, protein: 6.0, carbohydrates: 33.0)
//        let egg = IngredientDTO(name: "Яйцо", fat: 5.3, protein: 6.3, carbohydrates: 0.6)
//        
//        // Создаем рецепты
//        let buckwheatWithChickenRecipe = RecipeDTO(
//            name: "Гречка с куриным филе и овощами",
//            servingSize: "4 порции",
//            preparationTime: "30 минут",
//            description: "Питательное и сытное блюдо на каждый день.",
//            imageUrl: "<здесь_ссылка_на_изображение>",
//            instructions: "Поджарьте куриное филе до готовности, добавьте нарезанные морковь и лук.\nВлейте воду, добавьте гречку и тушите до готовности."
//        )
//        
//        [chickenBreast, carrot, onion, buckwheat].forEach {
//            buckwheatWithChickenRecipe.ingredients.append($0)
//        }
//        
//        let smoothieRecipe = RecipeDTO(
//            name: "Смузи с авокадо и шпинатом",
//            servingSize: "2 порции",
//            preparationTime: "5 минут",
//            description: "Освежающий и полезный смузи для энергичного начала дня.",
//            imageUrl: "<здесь_ссылка_на_изображение>",
//            instructions: "Все ингредиенты смешайте в блендере до однородной массы."
//        )
//        
//        [avocado, spinach, banana, milk, honey].forEach {
//            smoothieRecipe.ingredients.append($0)
//        }
//        
//        let saladWithTunaRecipe = RecipeDTO(
//            name: "Салат с тунцом, авокадо и яйцом",
//            servingSize: "2 порции",
//            preparationTime: "20 минут",
//            description: "Легкий и полезный салат для обеда или ужина.",
//            imageUrl: "<здесь_ссылка_на_изображение>",
//            instructions: "На салатные листья выложите тунца, нарезанные авокадо и яйца, заправьте оливковым маслом."
//        )
//        
//        [tuna, avocado, boiledEgg, saladLeaves, oliveOil].forEach {
//            saladWithTunaRecipe.ingredients.append($0)
//        }
//        
//        let chickenCutletsWithSpinachRecipe = RecipeDTO(
//            name: "Куриные котлеты со шпинатом",
//            servingSize: "4 порции",
//            preparationTime: "45 минут",
//            description: "Нежные и сочные куриные котлеты с нотками шпината.",
//            imageUrl: "<здесь_ссылка_на_изображение>",
//            instructions: "Измельчите куриное филе, шпинат, лук и чеснок, добавьте яйцо, соль и перец, сформируйте котлеты и обжарьте."
//        )
//        
//        [chickenBreast, spinach, onion, garlic, egg].forEach {
//            chickenCutletsWithSpinachRecipe.ingredients.append($0)
//        }
//        
////        [buckwheatWithChickenRecipe, smoothieRecipe, saladWithTunaRecipe, chickenCutletsWithSpinachRecipe].forEach {
////            context.insert($0)
////        }
//        
//
//        // Собираем массив всех рецептов
//        let allRecipes = [buckwheatWithChickenRecipe, smoothieRecipe, saladWithTunaRecipe, chickenCutletsWithSpinachRecipe]
//        
//        return allRecipes
//    }()
}
