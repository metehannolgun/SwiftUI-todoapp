//
//  ContentView.swift
//  todoapp
//
//  Created by Metehan Olgun on 5.02.2025.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var viewModel = MainViewViewModel()
    var body: some View {

//        Login oldu mu ve currenUserId doldu mu kontrolü
        if viewModel.isSignedIn, !viewModel.currenUserId.isEmpty{
            ToDoListView()
            
        } else {
            LoginView()
            
        }
    }
}

#Preview {
    MainView()
}
