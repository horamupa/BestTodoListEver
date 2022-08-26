//
//  ListRowView.swift
//  BestTodoListEver
//
//  Created by MM on 26.08.2022.
//

import SwiftUI


struct ListRowView: View {
    
//    @EnvironmentObject var viewModel: ListViewModel
    var model: ItemModel
     
    var body: some View {
        HStack {
            Image(systemName: model.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(model.isCompleted ? .green : .black)
            Text(model.title)
            Spacer()
        }
        .frame(height: 40)
    }
}


//struct ListRowView_Previews: PreviewProvider {
//
//    static var item1 = ItemModel(title: "Первая победа", isCompleted: false)
//    static var item2 = ItemModel(title: "Второе достижение", isCompleted: true)
//
//    static var previews: some View {
//        Group {
//            ListRowView(model: item1)
//            ListRowView(model: item2)
//        }
//        .previewLayout(.sizeThatFits)
//    }
//}
