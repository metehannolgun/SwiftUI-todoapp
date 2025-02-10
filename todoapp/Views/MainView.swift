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
            accountView
        } else {
            LoginView()
        }
    }
//bir view sınıfı oluşturduk ve bunu yukarda çağırdık böylece kod karmaşasaı azaldı
    @ViewBuilder
    var accountView: some View{
        TabView{
//id gönderiyoruz , ToDoListView içindeki init fonksiyonu çalışacak ve veri çekilecek
            ToDoListView(userId:  viewModel.currenUserId)
                .tabItem{
                    Label("Görevler", systemImage: "house")
                }
            ProfileView()
                .tabItem{
                    Label("Profile",
                    systemImage: "person.circle")
                }
        }
    }
}
#Preview {
    MainView()
}
