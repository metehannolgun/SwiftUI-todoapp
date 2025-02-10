//
//  ToDoListView.swift
//  todoapp
//
//  Created by Metehan Olgun on 7.02.2025.
//

import SwiftUI




struct ToDoListView: View {
    
    @StateObject var viewModel = ToDoListViewViewModel()
    private let userId: String
    
    init(userId: String){
//        dışardan gelen userId ' yi burdaki userId ye atadık
        self.userId = userId
    }
    
    
    var body: some View {
        NavigationView{
            VStack{
                
            }
            .navigationTitle("Görevler")
            .toolbar{
                Button{
                    //                    sheet açma kodları
                    viewModel.showingNewItemView.toggle()
                    
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showingNewItemView,
                   content: {
                NewItemView(newItemPresented:$viewModel.showingNewItemView)
                
            })
        }
    }
}


#Preview {
    ToDoListView(userId: "123")
}
