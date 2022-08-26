//
//  ListView.swift
//  BestTodoListEver
//
//  Created by MM on 26.08.2022.
//

import SwiftUI

struct ListView: View {
    
//    @EnvironmentObject var viewModel: ListViewModel
    @StateObject var viewModel = ListViewModel()
    
    var body: some View {
        
        VStack {
            List {
//                Text("\(viewModel.items[0].isCompleted)")
                ForEach(viewModel.items) { item in
                    HStack {
                        ListRowView(model: item)
                            .onTapGesture {
        //                        withAnimation(.linear) {
                                    viewModel.markDone(item: item)

        //                        }
                        }
                    }
                }
                .onDelete(perform: viewModel.deleteItem)
                .onMove(perform: viewModel.moveItem)
            }
            .padding(.top, 10)
            .listStyle(PlainListStyle())
            .navigationBarItems(
                leading: EditButton(),
                trailing: NavigationLink("Добавить", destination: {
                    AddView()
                }))
        .navigationTitle("Список побед 🏆")
        }
    }
    
    
    
}

struct ListView_Previews: PreviewProvider {
    static var viewModel = ListViewModel()
    static var previews: some View {
        NavigationView {
            ListView()
        }
        .environmentObject(viewModel)
    }
}


