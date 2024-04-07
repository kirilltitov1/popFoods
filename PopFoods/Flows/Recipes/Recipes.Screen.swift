//
//  Dishes.Screen.swift
//  PopFoods
//
//  Created by Титов Кирилл Иванович on 24.01.2024.
//

import SwiftUI
import DesignSystem

extension Recipes {
    struct Screen: View {
        
        @StateObject var viewModel: ViewModel = ViewModel()
        @EnvironmentObject var appvm: AppViewModel
        
        @State private var showingFilterSheet = false
        
        var body: some View {
            NavigationStack {
                VStack {
                    header
                    GeometryReader { geometry in
                        ScrollView(.vertical) {
                            List {
                                ForEach(viewModel.recipes[appvm.selectedDay.getDay] ?? []) { data in
                                    ZStack(alignment: .bottomTrailing) {
                                        RecipeCell(data: data)
                                            .onTapGesture {
//                                                selectedRecipe = data
                                            }
                                        Button(action: {
                                            
                                        }, label: {
                                            Image(systemName: "hand.thumbsup")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(.green)
                                        })
                                        .offset(x: -10, y: -18)
                                    }
                                }
                                .listRowSeparator(.hidden)
                                .background(Divider().offset(y: -5), alignment: .bottom)
                            }
                            .listStyle(PlainListStyle())
                            .frame(
                                width: geometry.size.width,
                                height: geometry.size.height
                            )
                        }
                        .scrollDisabled(true)
                        Spacer()
                    }
                }
            }
            .tabItem {
                TabItem(
                    title: viewModel.name,
                    imageName: viewModel.tabBarImageName
                )
            }
        }
    }
}

private extension Recipes.Screen {
    var header: some View {
        HStack {
            Button(action: {
                self.showingFilterSheet = true
            }, label: {
                Image(systemName: "slider.horizontal.3")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 20, height: 20)
            })
            .offset(x: 15)
            .sheet(isPresented: $showingFilterSheet) {
                RecipeFilter.FilterView()

            }
            Spacer()
            Button(action: {
                
            }, label: {
                Image(systemName: "calendar")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 25, height: 25)
            })
            .offset(x: -15)
        }
    }
}

#Preview {
    Recipes.Screen()
        .environmentObject(AppViewModel())
}
