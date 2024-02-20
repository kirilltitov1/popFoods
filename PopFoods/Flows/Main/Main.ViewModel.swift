//
//  Main.ViewModel.swift
//  PopFoods
//
//  Created by Титов Кирилл Иванович on 23.01.2024.
//

import Foundation

extension Main {
    final class ViewModel: ObservableObject {
        @Published var selectedTab: Int = 0 {
            didSet {
                print(selectedTab)
            }
        }
	}
}
