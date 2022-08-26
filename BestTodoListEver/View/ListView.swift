//
//  ListView.swift
//  BestTodoListEver
//
//  Created by MM on 26.08.2022.
//

import SwiftUI

struct ListView: View {
    
    @State var titles: [ItemModel] = [ItemModel(title: "Первая победа", isCompleted: false),ItemModel(title: "Второе достижение", isCompleted: true),ItemModel(title: "и не важнейшая третья!", isCompleted: false)]
    
    var body: some View {
        List {
            ForEach(titles) { item in
                ListRowView(model: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink("Добавить", destination: {
                AddView()
            }))
        .navigationTitle("Список побед 🏆")
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}


