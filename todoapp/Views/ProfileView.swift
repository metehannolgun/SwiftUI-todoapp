//
//  ProfileView.swift
//  todoapp
//
//  Created by Metehan Olgun on 7.02.2025.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var profileViewModel = ProfileViewViewModel()
    
    init(){}
    
    var body: some View {
        NavigationView{
            VStack{
                
            }
            .navigationTitle("Profil")
        }
    }
}

#Preview {
    ProfileView()
}
