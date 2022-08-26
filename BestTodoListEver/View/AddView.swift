//
//  AddView.swift
//  BestTodoListEver
//
//  Created by MM on 26.08.2022.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var viewModel: ListViewModel
    
    @State var text: String = ""
    
    var body: some View {
        ScrollView {
            TextField("Опиши её...", text: $text)
                .padding()
                .frame(height: 55)
                .background(Color(#colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)))
                .cornerRadius(10)
            Button {
                viewModel.saveItem(text: text)
                presentationMode.wrappedValue.dismiss()
            } label: {
                Text("Сохранить")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.accentColor)
                    .cornerRadius(10)
            }

        }
        .padding(.horizontal, 14)
        .padding(.top, 10)
        .navigationTitle("Добавь победу ✌️")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
    }
}
