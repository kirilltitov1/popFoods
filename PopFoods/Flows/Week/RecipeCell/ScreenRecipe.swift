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
            VStack(alignment: .leading, spacing: 12) {
                titleView
                descriptionView
                briefInformationView
                instructionsView
                
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
    }
    
    private var titleView: some View {
        Text(data.name)
            .font(.title3)
            .padding(.horizontal)
            .padding(.top)
            .bold()
            .offset()
    }
    
    private var descriptionView: some View {
        Text(data.descript)
            .font(.subheadline)
            .padding(.horizontal)
            .opacity(0.7)
    }
    
    private var briefInformationView: some View {
        Group {
            Divider()
            HStack() {
                Spacer()
                preparationTimeView
                Spacer()
                difficultyView
                Spacer()
                caloriesView
                Spacer()
                proteinsView
                Spacer()
                fatsView
                Spacer()
                carbohydratesView
                Spacer()
                
            }
            .padding(.horizontal, 16)
            Divider()
        }
    }
    
    private var instructionsView: some View {
        Text("\(data.instructions)")
            .font(.body)
            .truncationMode(.tail)
            .padding(.leading, 8)
            .padding(.trailing, 16)
    }
    
    private var preparationTimeView: some View {
        VStack {
            Text("\(data.preparationTime)" + " min"~)
                .bold()
                .font(.footnote)
            Text("time"~)
                .font(.footnote)
        }
    }
    
    private var caloriesView: some View {
        VStack {
            Text(String(format: "%.2f", data.calories))
                .bold()
                .font(.footnote)
            Text("kcal"~)
                .font(.footnote)
        }
    }
    
    private var proteinsView: some View {
        VStack {
            Text(String(format: "%.2f", data.proteins))
                .bold()
                .font(.footnote)
            Text("protein"~)
                .font(.footnote)
        }
    }
    
    private var fatsView: some View {
        VStack {
            Text(String(format: "%.2f", data.fats))
                .bold()
                .font(.footnote)
            Text("fat"~)
                .font(.footnote)
        }
    }
    
    private var carbohydratesView: some View {
        VStack {
            Text(String(format: "%.2f", data.fats))
                .bold()
                .font(.footnote)
            Text("carbs"~)
                .font(.footnote)
        }
    }
    
    private var difficultyView: some View {
        VStack {
            Text("Easy"~)
                .bold()
                .font(.footnote)
            Text("difficulty"~)
                .font(.footnote)
        }
    }
}

//#Preview {
//    ScreenRecipe(
//        data: RecipesStubs().recipes.first!
//)
//}
