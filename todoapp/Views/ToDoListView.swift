//
//  ToDoListView.swift
//  todoapp
//
//  Created by Metehan Olgun on 7.02.2025.
//

import FirebaseFirestore
import SwiftUI

struct ToDoListView: View {
    
    @StateObject var viewModel: ToDoListViewViewModel
    @FirestoreQuery var items: [ToDoListItem]
    
    init(userId: String){
        self._items = FirestoreQuery(collectionPath:"users/\(userId)/todos")
        self._viewModel = StateObject(wrappedValue: ToDoListViewViewModel(userId: userId))
    }
    
    
    var body: some View {
        NavigationView{
            VStack{
                List(items){ item in
                    ToDoListItemView(item: item)
                        .swipeActions{
                            Button("Sil"){
                                viewModel.delete(id: item.id)
                                
                            }
                            .background(Color.red)
                        }
                }
                .listStyle(PlainListStyle())
                
            }
            .navigationTitle("Görevler")
            .toolbar{
                Button{
                    //                    sheet açma kodları
                    viewModel.showingNewItemView = true
                    
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showingNewItemView,
                   content: {
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
                
            })
        }
    }
}


#Preview {
    ToDoListView(userId: "8fYWnq8JE2dDO8b9u55xRjQKYDb2")
}
