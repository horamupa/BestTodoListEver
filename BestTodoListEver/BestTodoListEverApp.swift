//
//  BestTodoListEverApp.swift
//  BestTodoListEver
//
//  Created by MM on 26.08.2022.
//

import SwiftUI

@main
struct BestTodoListEverApp: App {
    
    @StateObject var viewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(viewModel)
        }
    }
}
