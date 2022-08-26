//
//  ItemModel.swift
//  BestTodoListEver
//
//  Created by MM on 26.08.2022.
//

import Foundation

struct ItemModel: Identifiable {
    
    var id = UUID().uuidString
    var title: String
    var isCompleted: Bool
    
}
