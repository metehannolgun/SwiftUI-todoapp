//
//  ProfileView.swift
//  todoapp
//
//  Created by Metehan Olgun on 7.02.2025.
//

import SwiftUI

struct ProfileView: View {
    
    @StateObject var viewModel = ProfileViewViewModel()
    
    init(){}
    
    var body: some View {
        NavigationView{
            VStack{
                
                if let user = viewModel.user{
                    profile(user: user)
                    
                } else{
                    Text("Profil yükleniyor...")
                }
                

                //                Logout
                BigButton(title:"Çıkış yap"){
                    viewModel.logout()
                    
                }
                
            }
            .navigationTitle("Profil")
        }
        .onAppear{
            viewModel.fetchUser()
        }
    }
    
    @ViewBuilder
    func profile(user: User) -> some View {
        Image(systemName: "person.circle")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundColor(Color.blue)
            .frame(width: 100, height: 100)
        
        VStack{
            HStack{
                Text("İsim")
                Text(user.name)
            }
            HStack{
                Text("Email:")
                Text(user.email)
            }
            HStack{
                Text("Kayıt Tarihi:")
                Text("\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .shortened))")
            }
        }
        
    }
}
    
    

#Preview {
    ProfileView()
}
