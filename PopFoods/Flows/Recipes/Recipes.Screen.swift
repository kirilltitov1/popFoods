//
//  Dishes.Screen.swift
//  PopFoods
//
//  Created by Титов Кирилл Иванович on 24.01.2024.
//

import SwiftUI
import SwiftData
import DesignSystem

extension Recipes {
    struct Screen: View {
        
        @StateObject var viewModel: ViewModel = ViewModel()
        @EnvironmentObject var appvm: AppViewModel
        
        @State var selectedRecipe: RecipeDTO?
        @State private var showingFilterSheet = false
        @State private var isDatePickerPresented = false
        
        var body: some View {
            NavigationStack {
                VStack {
                    header
                    Calender(
                        data: viewModel.weeks,
                        selectedDay: $appvm.selectedDay
                    )
                    RoundedPickerView(
                        selectedValue: $viewModel.selectedOption,
                        options: viewModel.pickerOptions
                    )
                    .frame(height: 32)
                    .padding(.horizontal, 8)
                    GeometryReader { geometry in
                        ScrollView(.vertical) {
                            List {
                                ForEach(viewModel.recipes) { data in
                                    ZStack(alignment: .bottomTrailing) {
                                        RecipeCell(data: data)
                                            .onTapGesture {
                                                selectedRecipe = data
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
            .sheet(item: $selectedRecipe) { recipe in
                ScreenRecipe(data: recipe)
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
            .sheet(isPresented: $showingFilterSheet) {
                RecipeFilter.FilterView()
                
            }
            Spacer()
            TextField("Поиск", text: $viewModel.searchText, onEditingChanged: {
                viewModel.isEditing = $0
            })
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .overlay(
                HStack {
                    Spacer()
                    if viewModel.isEditing && !viewModel.searchText.isEmpty {
                        Button(action: {
                            viewModel.searchText = ""
                        }) {
                            Image(systemName: "multiply.circle.fill")
                                .foregroundColor(.gray)
                        }
                    }
                }
                    .padding(.trailing, 8)
            )
            Spacer()
            Button(action: {
                self.isDatePickerPresented.toggle()
            }, label: {
                Image(systemName: "calendar")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 25, height: 25)
            })
            .popover(isPresented: $isDatePickerPresented) {
                DatePicker(
                    "Выберите дату",
                    selection: $viewModel.selectedDate,
                    displayedComponents: [.date]
                )
                .datePickerStyle(GraphicalDatePickerStyle())
                .padding()
                .frame(width: 300)
            }
        }
        .padding(.horizontal, 15)
    }
}

#Preview {
    Recipes.Screen()
        .environmentObject(AppViewModel())
        .modelContainer(appContainer)
}
