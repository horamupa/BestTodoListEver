//
//  ListViewModel.swift
//  BestTodoListEver
//
//  Created by MM on 26.08.2022.
//

import Foundation
/*
CRUD
CREATE
READ
UCHO
DELETE
 */


class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = []
    
    init() {
        fetchData()
    }
    
    func fetchData() {
        let data = [ItemModel(title: "Первая победа", isCompleted: false),ItemModel(title: "Второе достижение", isCompleted: true),ItemModel(title: "и важнейшее третье!", isCompleted: false)]
        self.items.append(contentsOf: data)
    }
    
    func deleteItem(what: IndexSet) {
        items.remove(atOffsets: what)
    }
    
    func moveItem(at: IndexSet, to: Int) {
        items.move(fromOffsets: at, toOffset: to)
    }
    
    func saveItem(text: String) {
        if text == "" {
            return
        } else {
            let newItem: ItemModel = ItemModel(title: text, isCompleted: false)
            items.append(newItem)
        }
    }
    
    func markDone(item: ItemModel) {
        
        if let numInArray = items.firstIndex { $0.id == item.id } {
            print("func work")
            print(items[numInArray].isCompleted)
//            self.items[numInArray].isCompleted.toggle()
//            items[numInArray] = ItemModel(id: item.id, title: item.title, isCompleted: !item.isCompleted)
            items[numInArray] = item.updateItem()
            print(items[numInArray].isCompleted)
            
        }
        
        
    }
    
}
