//
//  UserSettings.swift
//  PopFoods
//
//  Created by Kirill Titov on 31.01.2024.
//

import SwiftUI
import SwiftData

final class UserSettings: ObservableObject {

    // MARK: - Widgets
    final class Widgets: ObservableObject {
        @State var isFPCWidgetVisable: Bool
        
        init() {
            let isFPCWidgetVisableFromDB = true
            self.isFPCWidgetVisable = isFPCWidgetVisableFromDB
        }
    }
        
    let widgets: Widgets
    
    init() {
        self.widgets = Widgets()
    }
}
